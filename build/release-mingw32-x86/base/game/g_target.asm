export Think_Target_Delay
code
proc Think_Target_Delay 4 8
ADDRLP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 848
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_UseTargets
CALLV
pop
LABELV $79
endproc Think_Target_Delay 4 8
export Use_Target_Delay
proc Use_Target_Delay 8 0
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
ADDRGP4 rand
CALLI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 760
ADDP4
ADDRGP4 level+32
INDIRI4
CVIF4 4
CNSTF4 1148846080
ADDRFP4 0
INDIRP4
CNSTI4 872
ADDP4
INDIRF4
ADDRFP4 0
INDIRP4
CNSTI4 876
ADDP4
INDIRF4
CNSTF4 1073741824
ADDRLP4 0
INDIRI4
CNSTI4 32767
BANDI4
CVIF4 4
CNSTF4 1191181824
DIVF4
CNSTF4 1056964608
SUBF4
MULF4
MULF4
ADDF4
MULF4
ADDF4
CVFI4 4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 764
ADDP4
ADDRGP4 Think_Target_Delay
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 848
ADDP4
ADDRFP4 8
INDIRP4
ASGNP4
LABELV $80
endproc Use_Target_Delay 8 0
export SP_target_delay
proc SP_target_delay 4 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRGP4 $85
ARGP4
ADDRGP4 $86
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 872
ADDP4
ARGP4
ADDRLP4 0
ADDRGP4 G_SpawnFloat
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
NEI4 $83
ADDRGP4 $87
ARGP4
ADDRGP4 $88
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 872
ADDP4
ARGP4
ADDRGP4 G_SpawnFloat
CALLI4
pop
LABELV $83
ADDRFP4 0
INDIRP4
CNSTI4 872
ADDP4
INDIRF4
CNSTF4 0
NEF4 $89
ADDRFP4 0
INDIRP4
CNSTI4 872
ADDP4
CNSTF4 1065353216
ASGNF4
LABELV $89
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 Use_Target_Delay
ASGNP4
LABELV $82
endproc SP_target_delay 4 12
export Use_Target_Score
proc Use_Target_Score 0 8
ADDRFP4 8
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $92
ADDRGP4 $91
JUMPV
LABELV $92
ADDRFP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
INDIRI4
ARGI4
ADDRGP4 AddScore
CALLV
pop
LABELV $91
endproc Use_Target_Score 0 8
export SP_target_score
proc SP_target_score 0 0
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
INDIRI4
CNSTI4 0
NEI4 $95
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
CNSTI4 1
ASGNI4
LABELV $95
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 Use_Target_Score
ASGNP4
LABELV $94
endproc SP_target_score 0 0
export Use_Target_Print
proc Use_Target_Print 12 8
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 4
BANDI4
CNSTI4 0
EQI4 $98
ADDRLP4 0
ADDRFP4 8
INDIRP4
ASGNP4
ADDRLP4 4
CNSTU4 0
ASGNU4
ADDRLP4 0
INDIRP4
CVPU4 4
ADDRLP4 4
INDIRU4
EQU4 $97
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CVPU4 4
ADDRLP4 4
INDIRU4
EQU4 $97
ADDRGP4 $102
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
ARGP4
ADDRLP4 8
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 8
INDIRP4
CVPU4 4
ADDRGP4 g_entities
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 1668
DIVI4
ARGI4
ADDRLP4 8
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
ADDRGP4 $97
JUMPV
LABELV $98
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 3
BANDI4
CNSTI4 0
EQI4 $103
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
EQI4 $105
ADDRGP4 $102
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 2
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_TeamCommand
CALLV
pop
LABELV $105
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 2
BANDI4
CNSTI4 0
EQI4 $97
ADDRGP4 $102
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 1
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 G_TeamCommand
CALLV
pop
ADDRGP4 $97
JUMPV
LABELV $103
ADDRGP4 $102
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 -1
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
LABELV $97
endproc Use_Target_Print 12 8
export SP_target_print
proc SP_target_print 0 0
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 Use_Target_Print
ASGNP4
LABELV $109
endproc SP_target_print 0 0
export Use_Target_Speaker
proc Use_Target_Speaker 8 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 3
BANDI4
CNSTI4 0
EQI4 $111
ADDRFP4 0
INDIRP4
CNSTI4 156
ADDP4
INDIRI4
CNSTI4 0
EQI4 $113
ADDRFP4 0
INDIRP4
CNSTI4 156
ADDP4
CNSTI4 0
ASGNI4
ADDRGP4 $112
JUMPV
LABELV $113
ADDRFP4 0
INDIRP4
CNSTI4 156
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 868
ADDP4
INDIRI4
ASGNI4
ADDRGP4 $112
JUMPV
LABELV $111
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $115
ADDRFP4 8
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $115
ADDRFP4 8
INDIRP4
ARGP4
CNSTI4 33
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 868
ADDP4
INDIRI4
ARGI4
ADDRGP4 G_AddEvent
CALLV
pop
ADDRGP4 $116
JUMPV
LABELV $115
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 4
BANDI4
CNSTI4 0
EQI4 $117
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 34
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 868
ADDP4
INDIRI4
ARGI4
ADDRGP4 G_AddEvent
CALLV
pop
ADDRGP4 $118
JUMPV
LABELV $117
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 33
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 868
ADDP4
INDIRI4
ARGI4
ADDRGP4 G_AddEvent
CALLV
pop
LABELV $118
LABELV $116
LABELV $112
LABELV $110
endproc Use_Target_Speaker 8 12
export SP_target_speaker
proc SP_target_speaker 112 16
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRGP4 $87
ARGP4
ADDRGP4 $86
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 872
ADDP4
ARGP4
ADDRGP4 G_SpawnFloat
CALLI4
pop
ADDRGP4 $120
ARGP4
ADDRGP4 $86
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 876
ADDP4
ARGP4
ADDRGP4 G_SpawnFloat
CALLI4
pop
ADDRGP4 $123
ARGP4
ADDRGP4 $124
ARGP4
ADDRLP4 0
ARGP4
ADDRLP4 68
ADDRGP4 G_SpawnString
CALLI4
ASGNI4
ADDRLP4 68
INDIRI4
CNSTI4 0
NEI4 $121
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ARGP4
ADDRLP4 72
ADDRGP4 vtos
CALLP4
ASGNP4
ADDRGP4 $125
ARGP4
ADDRLP4 72
INDIRP4
ARGP4
ADDRGP4 G_Error
CALLV
pop
LABELV $121
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 42
NEI4 $126
ADDRLP4 76
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 76
INDIRP4
ADDRLP4 76
INDIRP4
INDIRI4
CNSTI4 8
BORI4
ASGNI4
LABELV $126
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 $130
ARGP4
ADDRLP4 80
ADDRGP4 strstr
CALLP4
ASGNP4
ADDRLP4 80
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $128
ADDRLP4 4
ARGP4
CNSTI4 64
ARGI4
ADDRGP4 $131
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 Com_sprintf
CALLV
pop
ADDRGP4 $129
JUMPV
LABELV $128
ADDRLP4 4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
CNSTI4 64
ARGI4
ADDRGP4 Q_strncpyz
CALLV
pop
LABELV $129
ADDRLP4 4
ARGP4
ADDRLP4 84
ADDRGP4 G_SoundIndex
CALLI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 868
ADDP4
ADDRLP4 84
INDIRI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 9
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 184
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 868
ADDP4
INDIRI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 172
ADDP4
CNSTF4 1092616192
ADDRFP4 0
INDIRP4
CNSTI4 872
ADDP4
INDIRF4
MULF4
CVFI4 4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 168
ADDP4
CNSTF4 1092616192
ADDRFP4 0
INDIRP4
CNSTI4 876
ADDP4
INDIRF4
MULF4
CVFI4 4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
EQI4 $132
ADDRFP4 0
INDIRP4
CNSTI4 156
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 868
ADDP4
INDIRI4
ASGNI4
LABELV $132
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 Use_Target_Speaker
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 4
BANDI4
CNSTI4 0
EQI4 $134
ADDRLP4 104
ADDRFP4 0
INDIRP4
CNSTI4 432
ADDP4
ASGNP4
ADDRLP4 104
INDIRP4
ADDRLP4 104
INDIRP4
INDIRI4
CNSTI4 32
BORI4
ASGNI4
LABELV $134
ADDRFP4 0
INDIRP4
CNSTI4 24
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
INDIRB
ASGNB 12
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 trap_LinkEntity
CALLV
pop
LABELV $119
endproc SP_target_speaker 112 16
export target_teleporter_use
proc target_teleporter_use 20 12
ADDRFP4 8
ADDRFP4 8
INDIRP4
ASGNP4
ADDRLP4 8
CNSTU4 0
ASGNU4
ADDRFP4 8
INDIRP4
CVPU4 4
ADDRLP4 8
INDIRU4
EQU4 $139
ADDRFP4 8
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CVPU4 4
ADDRLP4 8
INDIRU4
NEU4 $137
LABELV $139
ADDRGP4 $136
JUMPV
LABELV $137
ADDRFP4 0
INDIRP4
CNSTI4 664
ADDP4
INDIRP4
ARGP4
ADDRLP4 12
ADDRGP4 G_PickTarget
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 12
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $140
ADDRGP4 $142
ARGP4
ADDRGP4 G_Printf
CALLV
pop
ADDRGP4 $136
JUMPV
LABELV $140
ADDRFP4 8
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 92
ADDP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 116
ADDP4
ARGP4
ADDRGP4 TeleportPlayer
CALLV
pop
LABELV $136
endproc target_teleporter_use 20 12
export SP_target_teleporter
proc SP_target_teleporter 4 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 668
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $144
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ARGP4
ADDRLP4 0
ADDRGP4 vtos
CALLP4
ASGNP4
ADDRGP4 $146
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 532
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
LABELV $144
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 target_teleporter_use
ASGNP4
LABELV $143
endproc SP_target_teleporter 4 12
export target_relay_use
proc target_relay_use 44 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 8
ADDRFP4 8
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
EQI4 $148
ADDRLP4 4
CNSTU4 0
ASGNU4
ADDRFP4 8
INDIRP4
CVPU4 4
ADDRLP4 4
INDIRU4
EQU4 $148
ADDRLP4 8
ADDRFP4 8
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
ASGNP4
ADDRLP4 8
INDIRP4
CVPU4 4
ADDRLP4 4
INDIRU4
EQU4 $148
ADDRLP4 8
INDIRP4
CNSTI4 216
ADDP4
INDIRI4
CNSTI4 2
EQI4 $148
ADDRGP4 $147
JUMPV
LABELV $148
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 2
BANDI4
CNSTI4 0
EQI4 $150
ADDRLP4 16
CNSTU4 0
ASGNU4
ADDRFP4 8
INDIRP4
CVPU4 4
ADDRLP4 16
INDIRU4
EQU4 $150
ADDRLP4 20
ADDRFP4 8
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
ASGNP4
ADDRLP4 20
INDIRP4
CVPU4 4
ADDRLP4 16
INDIRU4
EQU4 $150
ADDRLP4 20
INDIRP4
CNSTI4 216
ADDP4
INDIRI4
CNSTI4 1
EQI4 $150
ADDRGP4 $147
JUMPV
LABELV $150
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 4
BANDI4
CNSTI4 0
EQI4 $152
ADDRFP4 0
INDIRP4
CNSTI4 664
ADDP4
INDIRP4
ARGP4
ADDRLP4 28
ADDRGP4 G_PickTarget
CALLP4
ASGNP4
ADDRLP4 24
ADDRLP4 28
INDIRP4
ASGNP4
ADDRLP4 32
ADDRLP4 24
INDIRP4
ASGNP4
ADDRLP4 36
CNSTU4 0
ASGNU4
ADDRLP4 32
INDIRP4
CVPU4 4
ADDRLP4 36
INDIRU4
EQU4 $147
ADDRLP4 32
INDIRP4
CNSTI4 780
ADDP4
INDIRP4
CVPU4 4
ADDRLP4 36
INDIRU4
EQU4 $147
ADDRLP4 40
ADDRLP4 24
INDIRP4
ASGNP4
ADDRLP4 40
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 8
INDIRP4
ARGP4
ADDRLP4 40
INDIRP4
CNSTI4 780
ADDP4
INDIRP4
CALLV
pop
ADDRGP4 $147
JUMPV
LABELV $152
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 8
INDIRP4
ARGP4
ADDRGP4 G_UseTargets
CALLV
pop
LABELV $147
endproc target_relay_use 44 12
export SP_target_relay
proc SP_target_relay 0 0
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 target_relay_use
ASGNP4
LABELV $156
endproc SP_target_relay 0 0
export target_kill_use
proc target_kill_use 8 32
ADDRFP4 8
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $158
ADDRGP4 $157
JUMPV
LABELV $158
ADDRFP4 8
INDIRP4
ARGP4
ADDRLP4 0
CNSTP4 0
ASGNP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 4
CNSTP4 0
ASGNP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRLP4 4
INDIRP4
ARGP4
CNSTI4 100000
ARGI4
CNSTI4 8
ARGI4
CNSTI4 18
ARGI4
ADDRGP4 G_Damage
CALLV
pop
LABELV $157
endproc target_kill_use 8 32
export SP_target_kill
proc SP_target_kill 0 0
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 target_kill_use
ASGNP4
LABELV $160
endproc SP_target_kill 0 0
export SP_target_position
proc SP_target_position 4 8
ADDRLP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 92
ADDP4
ARGP4
ADDRGP4 G_SetOrigin
CALLV
pop
LABELV $161
endproc SP_target_position 4 8
data
align 4
LABELV $163
byte 4 1
export SP_target_location
code
proc SP_target_location 16 16
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4
CNSTI4 4
ASGNI4
ADDRFP4 0
INDIRP4
ADDRLP4 4
INDIRI4
ADDP4
ADDRLP4 4
INDIRI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 432
ADDP4
CNSTI4 32
ASGNI4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 trap_LinkEntity
CALLV
pop
ADDRGP4 $163
INDIRI4
CNSTI4 64
NEI4 $164
ADDRGP4 $166
ARGP4
ADDRGP4 G_Printf
CALLV
pop
ADDRGP4 $162
JUMPV
LABELV $164
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
INDIRI4
CNSTI4 0
EQI4 $167
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
INDIRI4
CNSTI4 0
GEI4 $169
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
CNSTI4 0
ASGNI4
LABELV $169
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
INDIRI4
CNSTI4 7
LEI4 $171
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
CNSTI4 7
ASGNI4
LABELV $171
ADDRGP4 $173
ARGP4
CNSTI4 94
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
INDIRI4
CNSTI4 48
ADDI4
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
ARGP4
ADDRLP4 12
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 12
INDIRP4
ASGNP4
ADDRGP4 $168
JUMPV
LABELV $167
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
ASGNP4
LABELV $168
ADDRGP4 $163
INDIRI4
CNSTI4 734
ADDI4
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
ADDRFP4 0
INDIRP4
CNSTI4 612
ADDP4
ADDRGP4 level+11228
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 208
ADDP4
ADDRGP4 $163
INDIRI4
ASGNI4
ADDRGP4 level+11228
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 8
ADDRGP4 $163
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ARGP4
ADDRGP4 G_SetOrigin
CALLV
pop
LABELV $162
endproc SP_target_location 16 16
export target_rumble_think
proc target_rumble_think 24 0
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 800
ADDP4
INDIRI4
ADDRGP4 level+32
INDIRI4
GEI4 $177
ADDRFP4 0
INDIRP4
CNSTI4 800
ADDP4
ADDRGP4 level+32
INDIRI4
CVIF4 4
CNSTF4 1056964608
ADDF4
CVFI4 4
ASGNI4
LABELV $177
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 0
CNSTI4 1668
ADDRLP4 4
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
ADDRGP4 $184
JUMPV
LABELV $181
ADDRLP4 0
INDIRP4
CNSTI4 528
ADDP4
INDIRI4
CNSTI4 0
NEI4 $186
ADDRGP4 $182
JUMPV
LABELV $186
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $188
ADDRGP4 $182
JUMPV
LABELV $188
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 68
ADDP4
INDIRI4
CNSTI4 1023
NEI4 $190
ADDRGP4 $182
JUMPV
LABELV $190
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 68
ADDP4
CNSTI4 1023
ASGNI4
ADDRLP4 8
ADDRGP4 rand
CALLI4
ASGNI4
ADDRLP4 12
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 32
ADDP4
ASGNP4
ADDRLP4 12
INDIRP4
ADDRLP4 12
INDIRP4
INDIRF4
CNSTF4 1125515264
CNSTF4 1073741824
ADDRLP4 8
INDIRI4
CNSTI4 32767
BANDI4
CVIF4 4
CNSTF4 1191181824
DIVF4
CNSTF4 1056964608
SUBF4
MULF4
MULF4
ADDF4
ASGNF4
ADDRLP4 16
ADDRGP4 rand
CALLI4
ASGNI4
ADDRLP4 20
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 36
ADDP4
ASGNP4
ADDRLP4 20
INDIRP4
ADDRLP4 20
INDIRP4
INDIRF4
CNSTF4 1125515264
CNSTF4 1073741824
ADDRLP4 16
INDIRI4
CNSTI4 32767
BANDI4
CVIF4 4
CNSTF4 1191181824
DIVF4
CNSTF4 1056964608
SUBF4
MULF4
MULF4
ADDF4
ASGNF4
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 40
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 688
ADDP4
INDIRF4
ASGNF4
LABELV $182
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 1668
ADDP4
ASGNP4
LABELV $184
ADDRLP4 4
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $181
ADDRGP4 level+32
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 656
ADDP4
INDIRI4
GEI4 $192
ADDRFP4 0
INDIRP4
CNSTI4 760
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 100
ADDI4
ASGNI4
LABELV $192
LABELV $176
endproc target_rumble_think 24 0
export target_rumble_use
proc target_rumble_use 4 0
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 656
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 100
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
INDIRI4
MULI4
ADDI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 760
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 100
ADDI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 848
ADDP4
ADDRFP4 8
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 800
ADDP4
CNSTI4 0
ASGNI4
LABELV $196
endproc target_rumble_use 4 0
export SP_target_rumble
proc SP_target_rumble 4 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 668
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $200
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ARGP4
ADDRLP4 0
ADDRGP4 vtos
CALLP4
ASGNP4
ADDRGP4 $202
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 532
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
LABELV $200
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
INDIRI4
CNSTI4 0
NEI4 $203
ADDRFP4 0
INDIRP4
CNSTI4 836
ADDP4
CNSTI4 10
ASGNI4
LABELV $203
ADDRFP4 0
INDIRP4
CNSTI4 688
ADDP4
INDIRF4
CNSTF4 0
NEF4 $205
ADDRFP4 0
INDIRP4
CNSTI4 688
ADDP4
CNSTF4 1120403456
ASGNF4
LABELV $205
ADDRFP4 0
INDIRP4
CNSTI4 764
ADDP4
ADDRGP4 target_rumble_think
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 target_rumble_use
ASGNP4
LABELV $199
endproc SP_target_rumble 4 12
export target_alien_win_use
proc target_alien_win_use 0 0
ADDRGP4 level+15988
CNSTI4 1
ASGNI4
LABELV $207
endproc target_alien_win_use 0 0
export SP_target_alien_win
proc SP_target_alien_win 0 0
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 target_alien_win_use
ASGNP4
LABELV $209
endproc SP_target_alien_win 0 0
export target_human_win_use
proc target_human_win_use 0 0
ADDRGP4 level+15992
CNSTI4 1
ASGNI4
LABELV $210
endproc target_human_win_use 0 0
export SP_target_human_win
proc SP_target_human_win 0 0
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 target_human_win_use
ASGNP4
LABELV $212
endproc SP_target_human_win 0 0
export target_hurt_use
proc target_hurt_use 12 32
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 8
ADDRFP4 8
INDIRP4
ASGNP4
ADDRFP4 8
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $216
ADDRFP4 8
INDIRP4
CNSTI4 812
ADDP4
INDIRI4
CNSTI4 0
NEI4 $214
LABELV $216
ADDRGP4 $213
JUMPV
LABELV $214
ADDRFP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 8
CNSTP4 0
ASGNP4
ADDRLP4 8
INDIRP4
ARGP4
ADDRLP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 816
ADDP4
INDIRI4
ARGI4
CNSTI4 0
ARGI4
CNSTI4 22
ARGI4
ADDRGP4 G_Damage
CALLV
pop
LABELV $213
endproc target_hurt_use 12 32
export SP_target_hurt
proc SP_target_hurt 4 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 668
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $218
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ARGP4
ADDRLP4 0
ADDRGP4 vtos
CALLP4
ASGNP4
ADDRGP4 $202
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 532
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
LABELV $218
ADDRFP4 0
INDIRP4
CNSTI4 816
ADDP4
INDIRI4
CNSTI4 0
NEI4 $220
ADDRFP4 0
INDIRP4
CNSTI4 816
ADDP4
CNSTI4 5
ASGNI4
LABELV $220
ADDRFP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRGP4 target_hurt_use
ASGNP4
LABELV $217
endproc SP_target_hurt 4 12
import gettext
import trap_Gettext
import trap_RemoveCommand
import trap_AddCommand
import trap_SendGameStat
import trap_SnapVector
import trap_GetEntityToken
import trap_GetUsercmd
import trap_BotFreeClient
import trap_BotAllocateClient
import trap_EntityContact
import trap_EntitiesInBox
import trap_UnlinkEntity
import trap_LinkEntity
import trap_AreasConnected
import trap_AdjustAreaPortalState
import trap_InPVSIgnorePortals
import trap_InPVS
import trap_PointContents
import trap_Trace
import trap_SetBrushModel
import trap_GetServerinfo
import trap_SetUserinfo
import trap_GetUserinfo
import trap_SetConfigstringRestrictions
import trap_GetConfigstring
import trap_SetConfigstring
import trap_SendServerCommand
import trap_DropClient
import trap_LocateGameData
import trap_Cvar_VariableStringBuffer
import trap_Cvar_VariableIntegerValue
import trap_Cvar_Set
import trap_Cvar_Update
import trap_Cvar_Register
import trap_SendConsoleCommand
import trap_FS_Seek
import trap_FS_GetFileList
import trap_FS_FCloseFile
import trap_FS_Write
import trap_FS_Read
import trap_FS_FOpenFile
import trap_Args
import trap_Argv
import trap_Argc
import trap_RealTime
import trap_Milliseconds
import trap_Error
import trap_Print
import g_censorship
import g_allowTeamOverlay
import g_publicAdminMessages
import g_specChat
import g_privateMessages
import g_adminMaxBan
import g_adminTempBan
import g_admin
import g_emoticonsAllowedInNames
import g_layoutAuto
import g_layouts
import g_mapConfigs
import g_shove
import g_floodMinTime
import g_floodMaxDemerits
import g_voiceChats
import g_debugVoices
import g_sayAreaRange
import g_initialMapRotation
import g_nextMap
import g_mapRotationStack
import g_mapRotationNodes
import g_currentMapRotation
import g_debugMapRotation
import g_markDeconstruct
import g_disabledBuildables
import g_disabledClasses
import g_disabledEquipment
import g_unlagged
import g_disableVoteInstantDomination
import g_disableDomination
import g_nextInstantDomination
import g_freeFundPeriod
import g_alienStage3Threshold
import g_alienStage2Threshold
import g_alienMaxStage
import g_alienCredits
import g_alienStage
import g_humanStage3Threshold
import g_humanStage2Threshold
import g_humanMaxStage
import g_humanCredits
import g_humanStage
import g_zoneMax
import g_zoneHumanBuildQueueTime
import g_zoneAlienBuildQueueTime
import g_zoneHumanBuildPoints
import g_zoneAlienBuildPoints
import g_humanBuildQueueTime
import g_humanBuildPoints
import g_alienBuildQueueTime
import g_alienBuildPoints
import pmove_msec
import pmove_fixed
import g_smoothClients
import g_teamForceBalance
import g_suddenDeathVoteDelay
import g_suddenDeathVotePercent
import g_voteLimit
import g_allowVote
import g_doWarmup
import g_warmup
import g_motd
import g_synchronousClients
import g_debugDamage
import g_debugMove
import g_inactivity
import g_knockback
import g_speed
import g_gravity
import g_needpass
import g_password
import g_dretchPunt
import g_friendlyBuildableFire
import g_friendlyFire
import g_suddenDeathTime
import g_timelimit
import g_maxNameChanges
import g_minNameChangePeriod
import g_lockTeamsAtStart
import g_restarted
import g_maxGameClients
import g_maxclients
import g_cheats
import g_dedicated
import g_entities
import level
import G_namelog_cleanup
import G_namelog_update_name
import G_namelog_update_score
import G_namelog_restore
import G_namelog_disconnect
import G_namelog_connect
import G_ClearRotationStack
import G_MapExists
import G_ShutdownMapRotations
import G_InitMapRotations
import G_MapRotationActive
import G_StopMapRotation
import G_StartMapRotation
import G_AdvanceMapRotation
import G_PrintRotations
import G_WriteSessionData
import G_InitSessionData
import G_ReadSessionData
import G_UpdateTeamConfigStrings
import CheckTeamStatus
import TeamplayInfoMessage
import Team_GetLocation
import G_ChangeTeam
import G_LeaveTeam
import OnSameTeam
import G_TeamCommand
import G_TeamFromString
import G_RunClient
import ClientEndFrame
import ClientThink
import G_UnlaggedOff
import G_UnlaggedOn
import G_UnlaggedCalc
import G_UnlaggedClear
import G_UnlaggedStore
import ClientCommand
import ClientBegin
import ClientDisconnect
import ClientUserinfoChanged
import ClientConnect
import G_TimeTilSuddenDeath
import LogExit
import G_CheckVote
import G_ExecuteVote
import G_Vote
import G_Error
import G_Printf
import SendScoreboardMessageToAllClients
import G_LogPrintf
import G_AdminMessage
import G_RunThink
import FindIntermissionPoint
import CalculateRanks
import G_MapConfigs
import MoveClientToIntermission
import ScoreboardMessage
import FireWeapon3
import FireWeapon2
import FireWeapon
import G_UnregisterCommands
import G_RegisterCommands
import ConsoleCommand
import SpotWouldTelefrag
import player_die
import ClientSpawn
import BeginIntermission
import respawn
import SpawnCorpse
import G_SelectHumanLockSpawnPoint
import G_SelectAlienLockSpawnPoint
import G_SelectSpawnPoint
import G_SelectTremulousSpawnPoint
import G_SetClientViewAngle
import TeamCount
import G_AddCreditToClient
import G_UpdateZaps
import G_CrushAttack
import G_ChargeAttack
import CheckCkitRepair
import CheckPounceAttack
import CheckGrabAttack
import CheckVenomAttack
import SnapVectorTowards
import CalcMuzzlePoint
import G_GiveClientMaxAmmo
import G_ForceWeaponChange
import ShineTorch
import TeleportPlayer
import G_Checktrigger_stages
import trigger_teleporter_touch
import manualTriggerSpectator
import Touch_DoorTrigger
import G_RunMover
import launch_grenade
import fire_hive
import fire_bounceBall
import fire_slowBlob
import fire_paraLockBlob
import fire_lockblob
import fire_luciferCannon
import fire_pulseRifle
import fire_blaster
import fire_flamer
import G_RunMissile
import G_InitDamageLocations
import G_LogDestruction
import AddScore
import body_die
import G_RewardAttackers
import G_SelectiveRadiusDamage
import G_RadiusDamage
import G_SelectiveDamage
import G_Damage
import CanDamage
import G_ClosestEnt
import G_Visible
import G_CloseMenus
import G_TriggerMenuArgs
import G_TriggerMenu
import G_ClientIsLagging
import BuildShaderStateConfig
import AddRemap
import G_SetOrigin
import G_BroadcastEvent
import G_AddEvent
import G_AddPredictableEvent
import vectoyaw
import vtos
import tv
import G_TouchSolids
import G_TouchTriggers
import G_EntitiesFree
import G_FreeEntity
import G_Sound
import G_TempEntity
import G_Spawn
import G_InitGentity
import G_SetMovedir
import G_UseTargets
import G_PickTarget
import G_Find
import G_KillBox
import G_SoundIndex
import G_ModelIndex
import G_ShaderIndex
import G_ParticleSystemIndex
import G_AddressCompare
import G_AddressParse
import G_BuildLogRevert
import G_BuildLogAuto
import G_BuildLogSet
import G_BuildLogNew
import G_IsCore
import G_InPowerZone
import G_RepeaterEntityForPoint
import G_ProvidingEntityForEntity
import G_ProvidingEntityForPoint
import G_FindProvider
import G_GetBuildPoints
import G_QueueBuildPoints
import G_NextQueueTime
import G_BaseSelfDestruct
import G_LayoutLoad
import G_LayoutSelect
import G_LayoutList
import G_LayoutSave
import FinishSpawningBuildable
import G_SpawnBuildable
import G_SetIdleBuildableAnim
import G_SetBuildableAnim
import G_BuildIfValid
import G_CanBuild
import G_ClearDeconMarks
import G_BuildableRange
import G_BuildableDie
import G_BuildableThink
import G_IsCreepHereForPlayer
import G_IsCreepHere
import G_Overmind
import G_Reactor
import G_FindDCC
import G_IsDCCBuilt
import G_IsPowered
import G_CheckSpawnPoint
import G_Physics
import G_CensorString
import G_LoadCensors
import G_ListCommands
import G_FloodLimited
import Cmd_AdminMessage_f
import Cmd_Test_f
import Cmd_ListMaps_f
import Cmd_PrivateMessage_f
import G_SanitiseString
import G_UnEscapeString
import G_DecolorString
import G_Say
import ConcatArgs
import G_ClientNumbersFromString
import G_ClientNumberFromString
import G_MatchOnePlayer
import G_ToggleFollow
import G_FollowNewClient
import G_FollowLockView
import G_StopFromFollowing
import G_StopFollowing
import G_NewString
import G_SpawnEntitiesFromString
import G_SpawnVector
import G_SpawnInt
import G_SpawnFloat
import G_SpawnString
import G_PrintSpawnQueue
import G_GetPosInSpawnQueue
import G_RemoveFromSpawnQueue
import G_PushSpawnQueue
import G_SearchSpawnQueue
import G_PeekSpawnQueue
import G_PopSpawnQueue
import G_GetSpawnQueueLength
import G_InitSpawnQueue
import G_admin_cleanup
import G_admin_duration
import G_admin_buffer_end
import G_admin_buffer_begin
import G_admin_buffer_print
import G_admin_print
import G_admin_revert
import G_admin_buildlog
import G_admin_lock
import G_admin_namelog
import G_admin_nextmap
import G_admin_restart
import G_admin_rename
import G_admin_spec999
import G_admin_endvote
import G_admin_allready
import G_admin_admintest
import G_admin_adminhelp
import G_admin_showbans
import G_admin_denybuild
import G_admin_mute
import G_admin_changemap
import G_admin_listplayers
import G_admin_listlayouts
import G_admin_listadmins
import G_admin_putteam
import G_admin_unban
import G_admin_ban
import G_admin_adjustban
import G_admin_kick
import G_admin_setlevel
import G_admin_time
import G_admin_authlog
import G_admin_admin
import G_admin_name_check
import G_admin_permission
import G_admin_readconfig
import G_admin_cmd_check
import G_admin_ban_check
import G_admin_cmdlist
import G_admin_unregister_cmds
import G_admin_register_cmds
import cmdcmp
import BG_TeamName
import BG_LoadEmoticons
import BG_VoiceTrackFind
import BG_VoiceTrackByNum
import BG_VoiceCmdByNum
import BG_VoiceCmdFind
import BG_VoiceByName
import BG_PrintVoices
import BG_VoiceInit
import BG_PrimaryWeapon
import BG_BuildableIsAllowed
import BG_ClassIsAllowed
import BG_UpgradeIsAllowed
import BG_WeaponIsAllowed
import BG_InitAllowedGameElements
import BG_ParseCSVBuildableList
import BG_ParseCSVClassList
import BG_ParseCSVEquipmentList
import atoi_neg
import atof_neg
import BG_PlayerTouchesItem
import BG_PlayerStateToEntityStateExtraPolate
import BG_PlayerStateToEntityState
import BG_AddPredictableEventToPlayerstate
import BG_EvaluateTrajectoryDelta
import BG_EvaluateTrajectory
import BG_MemoryInfo
import BG_DefragmentMemory
import BG_Free
import BG_InitMemory
import BG_Alloc
import BG_UpgradeAllowedInStage
import BG_Upgrade
import BG_UpgradeByName
import BG_WeaponAllowedInStage
import BG_Weapon
import BG_WeaponByName
import BG_InitClassConfigs
import BG_AlienCanEvolve
import BG_ClassCanEvolveFromTo
import BG_ClassHasAbility
import BG_ClassBoundingBox
import BG_ClassConfig
import BG_ClassAllowedInStage
import BG_Class
import BG_ClassByName
import BG_InitBuildableConfigs
import BG_BuildableBoundingBox
import BG_BuildableConfig
import BG_BuildableAllowedInStage
import BG_Buildable
import BG_BuildableByEntityName
import BG_BuildableByName
import BG_UnpackEntityNumbers
import BG_PackEntityNumbers
import BG_HasEnergyWeapon
import BG_GetPlayerWeapon
import BG_PlayerPoisonCloudTime
import BG_PlayerCanChangeWeapon
import BG_GetValueOfPlayer
import BG_PositionBuildableRelativeToPlayer
import BG_GetClientNormal
import BG_RotateAxis
import BG_UpgradeIsActive
import BG_DeactivateUpgrade
import BG_ActivateUpgrade
import BG_InventoryContainsUpgrade
import BG_RemoveUpgradeFromInventory
import BG_AddUpgradeToInventory
import BG_SlotsForInventory
import BG_InventoryContainsWeapon
import BG_WeaponIsFull
import BG_EventName
import Pmove
import PM_UpdateViewAngles
import Com_Printf
import Com_Error
import Info_NextPair
import Info_Validate
import Info_SetValueForKey_Big
import Info_SetValueForKey
import Info_RemoveKey_big
import Info_RemoveKey
import Info_ValueForKey
import Com_TruncateLongString
import va
import Q_UTF8Unstore
import Q_UTF8Store
import Q_UTF8Encode
import Q_UTF8CodePoint
import Q_UTF8ContByte
import Q_UTF8PrintStrlen
import Q_UTF8Strlen
import Q_UTF8Width
import Q_CountChar
import Q_ParseNewlines
import Q_CleanStr
import Q_PrintStrlen
import Q_strcat
import Q_strncpyz
import Q_stristr
import Q_strrchr
import Q_strupr
import Q_strlwr
import Q_stricmpn
import Q_strncmp
import Q_stricmp
import Q_isintegral
import Q_isanumber
import Q_isalpha
import Q_isupper
import Q_islower
import Q_isprint
import Com_ClientListParse
import Com_ClientListString
import Com_ClientListRemove
import Com_ClientListAdd
import Com_ClientListContains
import Com_RandomBytes
import Com_SkipCharset
import Com_SkipTokens
import Com_sprintf
import Com_HexStrToInt
import Parse3DMatrix
import Parse2DMatrix
import Parse1DMatrix
import SkipRestOfLine
import SkipBracedSection
import COM_MatchToken
import COM_ParseWarning
import COM_ParseError
import COM_Compress
import COM_ParseExt
import COM_Parse
import COM_GetCurrentParseLine
import COM_BeginParseSession
import COM_DefaultExtension
import COM_StripExtension
import COM_GetExtension
import COM_SkipPath
import Com_Clamp
import DistanceBetweenLineSegments
import DistanceBetweenLineSegmentsSquared
import VectorMaxComponent
import VectorMinComponent
import pointToLineDistance
import VectorDistance
import ProjectPointOntoVector
import GetPerpendicularViewVector
import Q_isnan
import PerpendicularVector
import AngleVectors
import VectorMatrixMultiply
import MatrixMultiply
import MakeNormalVectors
import RotateAroundDirection
import RotatePointAroundVector
import ProjectPointOnPlane
import PlaneFromPoints
import AngleDelta
import AngleNormalize180
import AngleNormalize360
import AnglesSubtract
import AngleSubtract
import LerpAngle
import AngleMod
import BoundsIntersectPoint
import BoundsIntersectSphere
import BoundsIntersect
import BoxOnPlaneSide
import SetPlaneSignbits
import AxisCopy
import AxisClear
import AxisToAngles
import AnglesToAxis
import vectoangles
import Q_crandom
import Q_random
import Q_rand
import Q_acos
import Q_log2
import VectorRotate
import Vector4Scale
import VectorNormalize2
import VectorNormalize
import CrossProduct
import VectorInverse
import VectorNormalizeFast
import DistanceSquared
import Distance
import VectorLengthSquared
import VectorLength
import VectorCompare
import AddPointToBounds
import ClearBounds
import RadiusFromBounds
import NormalizeColor
import ColorBytes4
import ColorBytes3
import _VectorMA
import _VectorScale
import _VectorCopy
import _VectorAdd
import _VectorSubtract
import _DotProduct
import ByteToDir
import DirToByte
import ClampShort
import ClampChar
import Q_rsqrt
import Q_fabs
import axisDefault
import vec3_origin
import g_color_table
import Q_StripIndentMarker
import colorDkGrey
import colorMdGrey
import colorLtGrey
import colorWhite
import colorCyan
import colorMagenta
import colorYellow
import colorBlue
import colorGreen
import colorRed
import colorBlack
import bytedirs
import Hunk_Alloc
import FloatSwap
import LongSwap
import ShortSwap
import rint
import pow
import acos
import fabs
import abs
import tan
import atan2
import cos
import sin
import sqrt
import floor
import ceil
import memcpy
import memset
import memmove
import sscanf
import strtol
import _atoi
import atoi
import strtod
import _atof
import atof
import toupper
import tolower
import strncpy
import strstr
import strrchr
import strchr
import strcmp
import strcpy
import strcat
import strlen
import bsearch
import rand
import srand
import qsort
lit
align 1
LABELV $202
byte 1 94
byte 1 51
byte 1 87
byte 1 65
byte 1 82
byte 1 78
byte 1 73
byte 1 78
byte 1 71
byte 1 58
byte 1 32
byte 1 117
byte 1 110
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 101
byte 1 100
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 97
byte 1 116
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $173
byte 1 37
byte 1 99
byte 1 37
byte 1 99
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 0
align 1
LABELV $166
byte 1 94
byte 1 51
byte 1 116
byte 1 111
byte 1 111
byte 1 32
byte 1 109
byte 1 97
byte 1 110
byte 1 121
byte 1 32
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 95
byte 1 108
byte 1 111
byte 1 99
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $146
byte 1 117
byte 1 110
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 101
byte 1 100
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 97
byte 1 116
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $142
byte 1 67
byte 1 111
byte 1 117
byte 1 108
byte 1 100
byte 1 110
byte 1 39
byte 1 116
byte 1 32
byte 1 102
byte 1 105
byte 1 110
byte 1 100
byte 1 32
byte 1 116
byte 1 101
byte 1 108
byte 1 101
byte 1 112
byte 1 111
byte 1 114
byte 1 116
byte 1 101
byte 1 114
byte 1 32
byte 1 100
byte 1 101
byte 1 115
byte 1 116
byte 1 105
byte 1 110
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 10
byte 1 0
align 1
LABELV $131
byte 1 37
byte 1 115
byte 1 46
byte 1 119
byte 1 97
byte 1 118
byte 1 0
align 1
LABELV $130
byte 1 46
byte 1 119
byte 1 97
byte 1 118
byte 1 0
align 1
LABELV $125
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 95
byte 1 115
byte 1 112
byte 1 101
byte 1 97
byte 1 107
byte 1 101
byte 1 114
byte 1 32
byte 1 119
byte 1 105
byte 1 116
byte 1 104
byte 1 111
byte 1 117
byte 1 116
byte 1 32
byte 1 97
byte 1 32
byte 1 110
byte 1 111
byte 1 105
byte 1 115
byte 1 101
byte 1 32
byte 1 107
byte 1 101
byte 1 121
byte 1 32
byte 1 97
byte 1 116
byte 1 32
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $124
byte 1 78
byte 1 79
byte 1 83
byte 1 79
byte 1 85
byte 1 78
byte 1 68
byte 1 0
align 1
LABELV $123
byte 1 110
byte 1 111
byte 1 105
byte 1 115
byte 1 101
byte 1 0
align 1
LABELV $120
byte 1 114
byte 1 97
byte 1 110
byte 1 100
byte 1 111
byte 1 109
byte 1 0
align 1
LABELV $102
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 34
byte 1 0
align 1
LABELV $88
byte 1 49
byte 1 0
align 1
LABELV $87
byte 1 119
byte 1 97
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $86
byte 1 48
byte 1 0
align 1
LABELV $85
byte 1 100
byte 1 101
byte 1 108
byte 1 97
byte 1 121
byte 1 0
