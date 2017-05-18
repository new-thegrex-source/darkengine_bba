/*
===========================================================================
Copyright (C) 1999-2005 Id Software, Inc.
Copyright (C) 2000-2009 Darklegion Development
Copyright (C) 2017 New Source with assotiation The Dark Side

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
// vid_local.h -- private video definations

#ifdef USE_CODEC_BINK

#include "../qcommon/q_shared.h"
#include "../qcommon/qcommon.h"
#include "vid_public.h"

#define	PAINTBUFFER_SIZE		4096					// this is in samples

#define vid_CHUNK_SIZE			1024					// samples
#define vid_CHUNK_SIZE_FLOAT	(vid_CHUNK_SIZE/2)		// floats
#define vid_CHUNK_SIZE_BYTE		(vid_CHUNK_SIZE*2)		// floats

#define _(String) Sys_Gettext(String)


typedef	struct vidBuffer_s {
	short					vidChunk[vid_CHUNK_SIZE];
	struct vidBuffer_s		*next;
    int						size;
} vidBuffer;

typedef struct sfx_s {
	vidBuffer		*videoData;
	qboolean		defaultvideo;			// couldn't be loaded, so use buzz
	qboolean		inMemory;				// not in Memory
	qboolean		videoCompressed;		// not in Memory
	int				videoCompressionMethod;	
	int 			videoLength;
	char 			videoName[MAX_QPATH];
	int				lastTimeUsed;
	int				duration;
	struct sfx_s	*next;
} sfx_t;

#define START_SAMPLE_IMMEDIATE	0x7fffffff

#define MAX_DOPPLER_SCALE 50.0f //arbitrary

typedef struct loopvideo_s {
	vec3_t		origin;
	vec3_t		velocity;
	sfx_t		*sfx;
	int			mergeFrame;
	qboolean	active;
	qboolean	kill;
	qboolean	doppler;
	float		dopplerScale;
	float		oldDopplerScale;
	int			framenum;
} loopvideo_t;

typedef struct
{
	int			allocTime;
	int			startSample;	// START_SAMPLE_IMMEDIATE = set immediately on next mix
	int			entnum;			// to allow overriding a specific video
	int			entchannel;		// to allow overriding a specific video
	int			leftvol;		// 0-255 volume after spatialization
	int			rightvol;		// 0-255 volume after spatialization
	int			master_vol;		// 0-255 volume before spatialization
	float		dopplerScale;
	float		oldDopplerScale;
	vec3_t		origin;			// only use if fixed_origin is set
	qboolean	fixed_origin;	// use origin instead of fetching entnum's origin
	sfx_t		*thesfx;		// sfx structure
	qboolean	doppler;
} channel_t;


// Interface between Q3 video "api" and the video backend
typedef struct
{
	void (*Shutdown)(void);
	void (*Startvideo)( vec3_t origin, int entnum, int entchannel, sfxHandle_t sfx );
	void (*StartLocalvideo)( sfxHandle_t sfx, int channelNum );
	void (*StartBackgroundTrack)( const char *intro, const char *loop );
	void (*StopBackgroundTrack)( void );
	void (*RawSamples)(int stream, int samples, int rate, int width, int channels, const byte *data, float volume);
	void (*StopAllvideos)( void );
	void (*ClearLoopingvideos)( qboolean killall );
	void (*AddLoopingvideo)( int entityNum, const vec3_t origin, const vec3_t velocity, sfxHandle_t sfx );
	void (*AddRealLoopingvideo)( int entityNum, const vec3_t origin, const vec3_t velocity, sfxHandle_t sfx );
	void (*StopLoopingvideo)(int entityNum );
	void (*Respatialize)( int entityNum, const vec3_t origin, vec3_t axis[3], int inwater );
	void (*UpdateEntityPosition)( int entityNum, const vec3_t origin );
	void (*Update)( void );
	void (*Disablevideos)( void );
	void (*BeginRegistration)( void );
	sfxHandle_t (*Registervideo)( const char *sample, qboolean compressed );
	int  (*videoDuration)( sfxHandle_t handle );
	void (*ClearvideoBuffer)( void );
	void (*videoInfo)( void );
	void (*videoList)( void );
#ifdef USE_VOIP
	void (*StartCapture)( void );
	int (*AvailableCaptureSamples)( void );
	void (*Capture)( int samples, byte *data );
	void (*StopCapture)( void );
	void (*MasterGain)( float gain );
#endif
} videoInterface_t;


/*
====================================================================

  SYSTEM SPECIFIC FUNCTIONS

====================================================================
*/

// initializes cycling through a DMA buffer and returns information on it
qboolean vidDMA_Init(void);

// gets the current DMA position
int		vidDMA_GetDMAPos(void);

// shutdown the DMA xfer.
void	vidDMA_Shutdown(void);

void	vidDMA_BeginPainting (void);

void	vidDMA_Submit(void);

//====================================================================


//extern	channel_t   V_channels[MAX_CHANNELS];
//extern	channel_t   loop_channels[MAX_CHANNELS];
extern	int		numLoopChannels;

extern	int		V_paintedtime;
extern	vec3_t	listener_forward;
extern	vec3_t	listener_right;
extern	vec3_t	listener_up;

#define	MAX_RAW_SAMPLES	16384
#define MAX_RAW_STREAMS 128
extern	int		V_rawend[MAX_RAW_STREAMS];


qboolean V_Loadvideo( sfx_t *sfx );

void		vid_free(vidBuffer *v);
vidBuffer*	vid_malloc( void );
void		vid_setup( void );

void V_PaintChannels(int endtime);

void V_memoryLoad(sfx_t *sfx);


// adpcm functions
//int  V_AdpcmMemoryNeeded( const wavinfo_t *info );
void V_AdpcmEncodevideo( sfx_t *sfx, short *samples );
void V_AdpcmGetSamples(vidBuffer *chunk, short *to);

// wavelet function

#define SENTINEL_MULAW_ZERO_RUN 127
#define SENTINEL_MULAW_FOUR_BIT_RUN 126

void V_FreeOldestvideo( void );

#define	NXStream byte

void encodeWavelet(sfx_t *sfx, short *packets);
void decodeWavelet( vidBuffer *stream, short *packets);

void encodeMuLaw( sfx_t *sfx, short *packets);
extern short mulawToShort[256];

extern short *sfxScratchBuffer;
extern sfx_t *sfxScratchPointer;
extern int	   sfxScratchIndex;

qboolean V_Base_Init( videoInterface_t *si );

// OpenAL stuff
typedef enum
{
	SRCPRI_AMBIENT = 0,	// Ambient video effects
	SRCPRI_ENTITY,			// Entity video effects
	SRCPRI_ONESHOT,			// One-shot videos
	SRCPRI_LOCAL,				// Local videos
	SRCPRI_STREAM				// Streams (music, cutscenes)
} alSrcPriority_t;

typedef int srcHandle_t;

qboolean V_AL_Init( videoInterface_t *si );
#endif