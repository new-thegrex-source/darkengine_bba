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

#ifdef USE_CODEC_BINK

void V_Init( void );
void V_Shutdown( void );

// if origin is NULL, the Video will be dynamically sourced from the entity
void V_StartVideo( vec3_t origin, int entnum, int entchannel, sfxHandle_t sfx );
void V_StartLocalVideo( sfxHandle_t sfx, int channelNum );

void V_StartBackgroundTrack( const char *intro, const char *loop );
void V_StopBackgroundTrack( void );

// cinematics and voice-over-network will send raw samples
// 1.0 volume will be direct output of source samples
void V_RawSamples (int stream, int samples, int rate, int width, int channels,
				   const byte *data, float volume);

// stop all Videos and the background track
void V_StopAllVideos( void );

// all continuous looping Videos must be added before calling S_Update
void V_ClearLoopingVideos( qboolean killall );
void V_AddLoopingVideo( int entityNum, const vec3_t origin, const vec3_t velocity, sfxHandle_t sfx );
void V_AddRealLoopingVideo( int entityNum, const vec3_t origin, const vec3_t velocity, sfxHandle_t sfx );
void V_StopLoopingVideo(int entityNum );

// recompute the reletive volumes for all running Videos
// reletive to the given entityNum / orientation
void V_Respatialize( int entityNum, const vec3_t origin, vec3_t axis[3], int inwater );

// let the Video system know where an entity currently is
void V_UpdateEntityPosition( int entityNum, const vec3_t origin );

void V_Update( void );

void V_DisableVideos( void );

void V_BeginRegistration( void );
	
// RegisterVideo will allways return a valid sample, even if it
// has to create a placeholder.  This prevents continuous filesystem
// checks for missing files
sfxHandle_t	S_RegisterVideo( const char *sample, qboolean compressed );

int S_VideoDuration( sfxHandle_t handle );

void V_DisplayFreeMemory(void);

void V_ClearVideoBuffer( void );

void vidDMA_Activate( void );

void V_UpdateBackgroundTrack( void );

#endif