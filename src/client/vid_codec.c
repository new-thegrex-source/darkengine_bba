/*
===========================================================================
Copyright (C) 1999-2005 Id Software, Inc.
Copyright (C) 2000-2009 Darklegion Development
Copyright (C) 2005 Stuart Dalton (badcdev@gmail.com)

This file is part of Tremulous.

Tremulous is free software; you can redistribute it
and/or modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 2 of the License,
or (at your option) any later version.

Tremulous is distributed in the hope that it will be
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Tremulous; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
===========================================================================
*/

#ifdef USE_CODEC_BINK

#include "client.h"
#include "vid_codec.h"

static vid_codec_t *codecs;

/*
=================
S_FileExtension
=================
*/
static char *V_FileExtension(const char *fni)
{
	// we should search from the ending to the last '/'

	char *fn = (char *) fni + strlen(fni) - 1;
	char *eptr = NULL;

	while(*fn != '/' && fn != fni)
	{
		if(*fn == '.')
		{
			eptr = fn;
			break;
		}
		fn--;
	}

	return eptr;
}

/*
=================
V_FindCodecForFile

Select an appropriate codec for a file based on its extension
=================
*/
static vid_codec_t *V_FindCodecForFile(const char *filename)
{
	char *ext = V_FileExtension(filename);
	vid_codec_t *codec = codecs;

	if(!ext)
	{
		// No extension - auto-detect
		while(codec)
		{
			char fn[MAX_QPATH];
			
			// there is no extension so we do not need to subtract 4 chars
			Q_strncpyz(fn, filename, MAX_QPATH);
			COM_DefaultExtension(fn, MAX_QPATH, codec->ext);

			// Check it exists
			if(FS_ReadFile(fn, NULL) != -1)
				return codec;

			// Nope. Next!
			codec = codec->next;
		}

		// Nothin'
		return NULL;
	}

	while(codec)
	{
		if(!Q_stricmp(ext, codec->ext))
			return codec;
		codec = codec->next;
	}

	return NULL;
}

/*
=================
V_CodecInit
=================
*/
void V_CodecInit()
{
	codecs = NULL;
	V_CodecRegister(&bink_codec);
}

/*
=================
V_CodecShutdown
=================
*/
void V_CodecShutdown()
{
	codecs = NULL;
}

/*
=================
V_CodecRegister
=================
*/
void V_CodecRegister(vid_codec_t *codec)
{
	codec->next = codecs;
	codecs = codec;
}

/*
=================
V_CodecLoad
=================
*/
void *V_CodecLoad(const char *filename, vid_info_t *info)
{
	vid_codec_t *codec;
	char fn[MAX_QPATH];

	codec = V_FindCodecForFile(filename);
	if(!codec)
	{
		Com_Printf(_("Unknown extension for %s\n"), filename);
		return NULL;
	}

	strncpy(fn, filename, sizeof(fn));
	COM_DefaultExtension(fn, sizeof(fn), codec->ext);

	return codec->load(fn, info);
}

/*
=================
V_CodecOpenStream
=================
*/
vid_stream_t *V_CodecOpenStream(const char *filename)
{
	vid_codec_t *codec;
	char fn[MAX_QPATH];

	codec = V_FindCodecForFile(filename);
	if(!codec)
	{
		Com_Printf(_("Unknown extension for %s\n"), filename);
		return NULL;
	}

	strncpy(fn, filename, sizeof(fn));
	COM_DefaultExtension(fn, sizeof(fn), codec->ext);

	return codec->open(fn);
}

void V_CodecCloseStream(vid_stream_t *stream)
{
	stream->codec->close(stream);
}

int V_CodecReadStream(vid_stream_t *stream, int bytes, void *buffer)
{
	return stream->codec->read(stream, bytes, buffer);
}

//=======================================================================
// Util functions (used by codecs)

/*
=================
V_CodecUtilOpen
=================
*/
vid_stream_t *V_CodecUtilOpen(const char *filename, vid_codec_t *codec)
{
	vid_stream_t *stream;
	fileHandle_t hnd;
	int length;

	// Try to open the file
	length = FS_FOpenFileRead(filename, &hnd, qtrue);
	if(!hnd)
	{
		Com_Printf(_("Can't read video file %s\n"), filename);
		return NULL;
	}

	// Allocate a stream
	stream = Z_Malloc(sizeof(vid_stream_t));
	if(!stream)
	{
		FS_FCloseFile(hnd);
		return NULL;
	}

	// Copy over, return
	stream->codec = codec;
	stream->file = hnd;
	stream->length = length;
	return stream;
}

/*
=================
V_CodecUtilClose
=================
*/
void V_CodecUtilClose(vid_stream_t **stream)
{
	FS_FCloseFile((*stream)->file);
	Z_Free(*stream);
	*stream = NULL;
}
#endif