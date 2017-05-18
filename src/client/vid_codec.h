/*
===========================================================================
Copyright (C) 1999-2005 Id Software, Inc.
Copyright (C) 2000-2009 Darklegion Development
Copyright (C) 2005 Stuart Dalton (badcdev@gmail.com)
Copyright (C) 2017 New Source (deaththeheyouta@gmail.com)

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

#ifndef _VID_CODEC_H_
#define _VID_CODEC_H_

#include "../qcommon/q_shared.h"
#include "../qcommon/qcommon.h"

typedef struct vid_info_s
{
	int width;
	int heigh;
	int size;
	int dataofs;
} vid_info_t;

typedef struct vid_codec_s vid_codec_t;

typedef struct vid_stream_s
{
	vid_codec_t *codec;
	fileHandle_t file;
	vid_info_t info;
	int length;
	int pos;
	void *ptr;
} vid_stream_t;

// Codec functions
typedef void *(*CODEC_LOAD)(const char *filename, vid_info_t *info);
typedef vid_stream_t *(*CODEC_OPEN)(const char *filename);
typedef int (*CODEC_READ)(vid_stream_t *stream, int bytes, void *buffer);
typedef void (*CODEC_CLOSE)(vid_stream_t *stream);

// Codec data structure
struct vid_codec_s
{
	char *ext;
	CODEC_LOAD load;
	CODEC_OPEN open;
	CODEC_READ read;
	CODEC_CLOSE close;
	vid_codec_t *next;
};

// Codec management
void V_CodecInit( void );
void V_CodecShutdown( void );
void V_CodecRegister(vid_codec_t *codec);
void *V_CodecLoad(const char *filename, vid_info_t *info);
vid_stream_t *V_CodecOpenStream(const char *filename);
void V_CodecCloseStream(vid_stream_t *stream);
int V_CodecReadStream(vid_stream_t *stream, int bytes, void *buffer);

// Util functions (used by codecs)
vid_stream_t *V_CodecUtilOpen(const char *filename, vid_codec_t *codec);
void V_CodecUtilClose(vid_stream_t **stream);

// WAV Codec
extern vid_codec_t bink_codec;
void *V_BINK_CodecLoad(const char *filename, vid_info_t *info);
vid_stream_t *V_BINK_CodecOpenStream(const char *filename);
void V_BINK_CodecCloseStream(vid_stream_t *stream);
int V_BINK_CodecReadStream(vid_stream_t *stream, int bytes, void *buffer);

//BINK 
/*
enum OldSources {
    BINKB_SRC_BLOCK_TYPES = 0, ///< 8x8 block types
    BINKB_SRC_COLORS,          ///< pixel values used for different block types
    BINKB_SRC_PATTERN,         ///< 8-bit values for 2-colour pattern fill
    BINKB_SRC_X_OFF,           ///< X components of motion value
    BINKB_SRC_Y_OFF,           ///< Y components of motion value
    BINKB_SRC_INTRA_DC,        ///< DC values for intrablocks with DCT
    BINKB_SRC_INTER_DC,        ///< DC values for interblocks with DCT
    BINKB_SRC_INTRA_Q,         ///< quantizer values for intrablocks with DCT
    BINKB_SRC_INTER_Q,         ///< quantizer values for interblocks with DCT
    BINKB_SRC_INTER_COEFS,     ///< number of coefficients for residue blocks

    BINKB_NB_SRC
};*/



#endif // !_VID_CODEC_H_
#endif