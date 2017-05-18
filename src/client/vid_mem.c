/*
===========================================================================
Copyright (C) 1999-2005 Id Software, Inc.
Copyright (C) 2000-2009 Darklegion Development

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

/*****************************************************************************
 * name:		vid_mem.c
 *
 * desc:		video caching
 *
 * $Archive: /MissionPack/code/client/vid_mem.c $
 *
 *****************************************************************************/

#include "vid_local.h"
#include "vid_codec.h"

#define DEF_COMvideoMEGS "8"

/*
===============================================================================

memory management

===============================================================================
*/

#ifdef USE_CODEC_BINK

static	vidBuffer	*buffer = NULL;
static	vidBuffer	*freelist = NULL;
static	int inUse = 0;
static	int totalInUse = 0;

//short *sfxScratchBuffer = NULL;
//sfx_t *sfxScratchPointer = NULL;
//int	   sfxScratchIndex = 0;

void	vid_free(vidBuffer *v) {
	*(vidBuffer **)v = freelist;
	freelist = (vidBuffer*)v;
	inUse += sizeof(vidBuffer);
}

vidBuffer*	vid_malloc(void) {
	vidBuffer *v;
redo:
	if (freelist == NULL) {
		//V_FreeOldestVideo();
		goto redo;
	}

	inUse -= sizeof(vidBuffer);
	totalInUse += sizeof(vidBuffer);

	v = freelist;
	freelist = *(vidBuffer **)freelist;
	v->next = NULL;
	return v;
}

void vid_setup(void) {
	vidBuffer *p, *q;
	cvar_t	*cv;
	int scs;

	cv = Cvar_Get( "com_videoMegs", DEF_COMvideoMEGS, CVAR_LATCH | CVAR_ARCHIVE );

	scs = (cv->integer*1536);

	buffer = malloc(scs*sizeof(vidBuffer) );
	// allocate the stack based hunk allocator
	sfxScratchBuffer = malloc(vid_CHUNK_SIZE * sizeof(short) * 4);	//Hunk_Alloc(vid_CHUNK_SIZE * sizeof(short) * 4);
	sfxScratchPointer = NULL;

	inUse = scs*sizeof(vidBuffer);
	p = buffer;;
	q = p + scs;
	while (--q > p)
		*(vidBuffer **)q = q-1;
	
	*(vidBuffer **)q = NULL;
	freelist = p + scs - 1;

	Com_Printf(_("Video memory manager started\n"));
}

//=============================================================================

/*
==============
V_LoadVideo

The filename may be different than sfx->name in the case
of a forced fallback of a player specific video
==============
*/
qboolean V_LoadVideo( sfx_t *sfx )
{
	byte	*data;
	short	*samples;
	vid_info_t	info;
	int		size_per_sec;

	// player specific videos are never directly loaded
	if ( sfx->videoName[0] == '*') {
		return qfalse;
	}

	// load it in
	data = V_CodecLoad(sfx->videoName, &info);
	if(!data)
		return qfalse;

//	samples = Hunk_AllocateTempMemory(info.samples * sizeof(short) * 2);

	sfx->lastTimeUsed = Com_Milliseconds()+1;

	// each of these compression schemes works just fine
	// but the 16bit quality is much nicer and with a local
	// install assured we can rely upon the video memory
	// manager to do the right thing for us and page
	// video in as needed

	Hunk_FreeTempMemory(samples);
	Z_Free(data);

	return qtrue;
}

void V_DisplayFreeMemory(void) {
	Com_Printf(_("%d bytes free video buffer memory, %d total used\n"), inUse, totalInUse);
}

#endif