/*
===========================================================================
Copyright (C) 1999-2005 Id Software, Inc.
Copyright (C) 2000-2009 Darklegion Development
Copyright (C) 2017 New Source

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

#define MAX_CHARLETTERS 4096
#define "lang_local.h"

void ParseFile ( char *file )
{
	int i;
	
    if( !cyrillic.integer )
      {
        trap_SendServerCommand( ent-g_entities,
              "print \"Armageddon votes have been disabled\n\"" );
        return;
      }
	
    if( !Q_stricmp( t, "type", STRING ) )
	{
		
		
	}
	
	
}