#ifdef USE_CODEC_BINK
/*#include <libavutil/avassert.h>
#include <libavutil/attributes.h>
#include <libavutil/imgutils.h>
#include <libavutil/internal.h>
#include <libavutil/buffer.h>

#define BITSTREAM_READER_LE
#include <avcodec.h>
#include <binkdata.h>
#include <binkdsp.h>
#include <blockdsp.h>
#include <get_bits.h>
#include <hpeldsp.h>
#include <internal.h>
#include <mathops.h>

#define BINK_FLAG_ALPHA 0x00100000
#define BINK_FLAG_GRAY  0x00020000*/

#include "client.h"
#include "vid_codec.h"

// BINK codec
vid_codec_t bink_codec =
{
	".bik",
	V_BINK_CodecLoad,
	V_BINK_CodecOpenStream,
	V_BINK_CodecReadStream,
	V_BINK_CodecCloseStream,
	NULL
};
/*
static const int binkb_bundle_sizes[BINKB_NB_SRC] = {
    4, 8, 8, 5, 5, 11, 11, 4, 4, 7
};

static const int binkb_bundle_signed[BINKB_NB_SRC] = {
    0, 0, 0, 1, 1, 0, 1, 0, 0, 0
};*/

#ifdef USE_CODEC_BINK
//#include "../libffmpeg/bink.c"
#endif

/*
=================
V_BINK_CodecLoad
=================
*/
void *V_BINK_CodecLoad(const char *filename, vid_info_t *info)
{
	fileHandle_t file;
	void *buffer;

	// Try to open the file
	FS_FOpenFileRead(filename, &file, qtrue);
	if(!file)
	{
		Com_Printf( _(S_COLOR_RED "ERROR: Could not open \"%s\"\n"),
				filename);
		return NULL;
	}

	// Allocate some memory
	buffer = Z_Malloc(info->size);
	if(!buffer)
	{
		FS_FCloseFile(file);
		Com_Printf( _(S_COLOR_RED "ERROR: Out of memory reading \"%s\"\n"),
				filename);
		return NULL;
	}

	// Read, byteswap
	FS_Read(buffer, info->size, file);

	// Close and return
	FS_FCloseFile(file);
	return buffer;
}

/*
=================
V_BINK_CodecOpenStream
=================
*/
vid_stream_t *V_BINK_CodecOpenStream(const char *filename)
{
	vid_stream_t *rv;

	// Open
	rv = V_CodecUtilOpen(filename, &bink_codec);
	if(!rv)
		return NULL;

	return rv;
}

/*
=================
S_BINK_CodecCloseStream
=================
*/
void V_BINK_CodecCloseStream(vid_stream_t *stream)
{
	V_CodecUtilClose(&stream);
}

/*
=================
S_BINK_CodecReadStream
=================
*/
int V_BINK_CodecReadStream(vid_stream_t *stream, int bytes, void *buffer)
{
	int remaining = stream->info.size - stream->pos;
	int samples;

	if(remaining <= 0)
		return 0;
	if(bytes > remaining)
		bytes = remaining;
	stream->pos += bytes;
	FS_Read(buffer, bytes, stream->file);
	return bytes;
}
#endif