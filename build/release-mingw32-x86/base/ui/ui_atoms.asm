export Com_Error
code
proc Com_Error 1028 16
ADDRLP4 0
ADDRFP4 4+4
ASGNP4
ADDRLP4 4
ARGP4
CNSTU4 1024
ARGU4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 Q_vsnprintf
CALLI4
pop
ADDRLP4 0
CNSTP4 0
ASGNP4
ADDRLP4 4
ARGP4
ADDRGP4 trap_Error
CALLV
pop
LABELV $108
endproc Com_Error 1028 16
export Com_Printf
proc Com_Printf 1028 16
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
ADDRLP4 4
ARGP4
CNSTU4 1024
ARGU4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 Q_vsnprintf
CALLI4
pop
ADDRLP4 0
CNSTP4 0
ASGNP4
ADDRLP4 4
ARGP4
ADDRGP4 trap_Print
CALLV
pop
LABELV $110
endproc Com_Printf 1028 16
export UI_ClampCvar
proc UI_ClampCvar 0 0
ADDRFP4 8
ADDRFP4 8
INDIRF4
ASGNF4
ADDRFP4 8
INDIRF4
ADDRFP4 0
INDIRF4
GEF4 $113
ADDRFP4 0
INDIRF4
RETF4
ADDRGP4 $112
JUMPV
LABELV $113
ADDRFP4 8
INDIRF4
ADDRFP4 4
INDIRF4
LEF4 $115
ADDRFP4 4
INDIRF4
RETF4
ADDRGP4 $112
JUMPV
LABELV $115
ADDRFP4 8
INDIRF4
RETF4
LABELV $112
endproc UI_ClampCvar 0 0
export UI_StartDemoLoop
proc UI_StartDemoLoop 0 8
CNSTI4 2
ARGI4
ADDRGP4 $118
ARGP4
ADDRGP4 trap_Cmd_ExecuteText
CALLV
pop
LABELV $117
endproc UI_StartDemoLoop 0 8
bss
align 1
LABELV $120
skip 1024
export UI_Argv
code
proc UI_Argv 0 12
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 $120
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
ADDRGP4 $120
RETP4
LABELV $119
endproc UI_Argv 0 12
export UI_ConcatArgs
proc UI_ConcatArgs 36 4
ADDRFP4 0
ADDRFP4 0
INDIRI4
ASGNI4
ADDRFP4 4
ADDRFP4 4
INDIRP4
ASGNP4
ADDRFP4 8
ADDRFP4 8
INDIRI4
ASGNI4
ADDRFP4 8
INDIRI4
CNSTI4 0
GTI4 $122
ADDRFP4 4
INDIRP4
RETP4
ADDRGP4 $121
JUMPV
LABELV $122
ADDRLP4 0
ADDRFP4 4
INDIRP4
ASGNP4
ADDRLP4 8
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 4
ADDRLP4 8
INDIRI4
ASGNI4
ADDRGP4 $127
JUMPV
LABELV $124
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 16
ADDRGP4 UI_Argv
CALLP4
ASGNP4
ADDRLP4 12
ADDRLP4 16
INDIRP4
ASGNP4
ADDRGP4 $129
JUMPV
LABELV $128
ADDRLP4 20
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 28
CNSTI4 1
ASGNI4
ADDRLP4 0
ADDRLP4 20
INDIRP4
ADDRLP4 28
INDIRI4
ADDP4
ASGNP4
ADDRLP4 24
ADDRLP4 12
INDIRP4
ASGNP4
ADDRLP4 12
ADDRLP4 24
INDIRP4
ADDRLP4 28
INDIRI4
ADDP4
ASGNP4
ADDRLP4 20
INDIRP4
ADDRLP4 24
INDIRP4
INDIRI1
ASGNI1
LABELV $129
ADDRLP4 12
INDIRP4
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $131
ADDRLP4 0
INDIRP4
CVPU4 4
ADDRFP4 8
INDIRI4
CNSTI4 1
SUBI4
ADDRFP4 4
INDIRP4
ADDP4
CVPU4 4
LTU4 $128
LABELV $131
ADDRLP4 0
INDIRP4
CVPU4 4
ADDRFP4 8
INDIRI4
CNSTI4 2
SUBI4
ADDRFP4 4
INDIRP4
ADDP4
CVPU4 4
GEU4 $126
ADDRLP4 32
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 0
ADDRLP4 32
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
CNSTI1 32
ASGNI1
LABELV $133
LABELV $125
ADDRFP4 0
ADDRFP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $127
ADDRFP4 0
INDIRI4
ADDRLP4 4
INDIRI4
LTI4 $124
LABELV $126
ADDRLP4 0
INDIRP4
CNSTI1 0
ASGNI1
ADDRFP4 4
INDIRP4
RETP4
LABELV $121
endproc UI_ConcatArgs 36 4
bss
align 1
LABELV $135
skip 1024
export UI_Cvar_VariableString
code
proc UI_Cvar_VariableString 0 12
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $135
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Cvar_VariableStringBuffer
CALLV
pop
ADDRGP4 $135
RETP4
LABELV $134
endproc UI_Cvar_VariableString 0 12
proc UI_Cache_f 0 0
ADDRGP4 Display_CacheAll
CALLV
pop
LABELV $136
endproc UI_Cache_f 0 0
proc UI_Menu_f 8 4
ADDRLP4 0
ADDRGP4 Menu_Count
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
LEI4 $138
CNSTI4 2
ARGI4
ADDRGP4 trap_Key_SetCatcher
CALLV
pop
CNSTI4 1
ARGI4
ADDRLP4 4
ADDRGP4 UI_Argv
CALLP4
ASGNP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 Menus_ActivateByName
CALLP4
pop
LABELV $138
LABELV $137
endproc UI_Menu_f 8 4
proc UI_CloseMenus_f 8 8
ADDRLP4 0
ADDRGP4 Menu_Count
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
LEI4 $141
ADDRLP4 4
ADDRGP4 trap_Key_GetCatcher
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 -3
BANDI4
ARGI4
ADDRGP4 trap_Key_SetCatcher
CALLV
pop
ADDRGP4 trap_Key_ClearStates
CALLV
pop
ADDRGP4 $143
ARGP4
ADDRGP4 $144
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
ADDRGP4 Menus_CloseAll
CALLV
pop
LABELV $141
LABELV $140
endproc UI_CloseMenus_f 8 8
proc UI_MessageMode_f 20 8
CNSTI4 0
ARGI4
ADDRLP4 4
ADDRGP4 UI_Argv
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4
INDIRP4
ASGNP4
ADDRGP4 $146
ARGP4
ADDRGP4 $147
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
ADDRLP4 8
ADDRLP4 0
INDIRP4
CNSTI4 11
ADDP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 16
CNSTI4 0
ASGNI4
ADDRLP4 8
INDIRI4
ADDRLP4 16
INDIRI4
EQI4 $151
ADDRLP4 8
INDIRI4
ADDRLP4 16
INDIRI4
LTI4 $148
LABELV $155
ADDRLP4 8
INDIRI4
CNSTI4 50
EQI4 $153
ADDRGP4 $148
JUMPV
LABELV $148
LABELV $151
ADDRGP4 uiInfo+121956
CNSTI4 0
ASGNI4
ADDRGP4 $149
JUMPV
LABELV $153
ADDRGP4 uiInfo+121956
CNSTI4 1
ASGNI4
LABELV $149
CNSTI4 2
ARGI4
ADDRGP4 trap_Key_SetCatcher
CALLV
pop
ADDRGP4 $156
ARGP4
ADDRGP4 Menus_CloseByName
CALLV
pop
ADDRGP4 $157
ARGP4
ADDRGP4 Menus_CloseByName
CALLV
pop
ADDRGP4 uiInfo+121956
INDIRI4
CNSTI4 0
EQI4 $158
ADDRGP4 $157
ARGP4
ADDRGP4 Menus_ActivateByName
CALLP4
pop
ADDRGP4 $159
JUMPV
LABELV $158
ADDRGP4 $156
ARGP4
ADDRGP4 Menus_ActivateByName
CALLP4
pop
LABELV $159
LABELV $145
endproc UI_MessageMode_f 20 8
proc UI_Me_f 156 12
CNSTI4 1
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 146
ARGI4
ADDRGP4 UI_ConcatArgs
CALLP4
pop
ADDRGP4 uiInfo+121956
INDIRI4
CNSTI4 0
EQI4 $162
ADDRLP4 148
ADDRGP4 $157
ASGNP4
ADDRGP4 $163
JUMPV
LABELV $162
ADDRLP4 148
ADDRGP4 $156
ASGNP4
LABELV $163
ADDRGP4 $165
ARGP4
ADDRLP4 148
INDIRP4
ARGP4
ADDRLP4 0
ARGP4
ADDRLP4 152
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 2
ARGI4
ADDRLP4 152
INDIRP4
ARGP4
ADDRGP4 trap_Cmd_ExecuteText
CALLV
pop
LABELV $161
endproc UI_Me_f 156 12
data
export commands
align 4
LABELV commands
address $166
address UI_CloseMenus_f
address $167
address UI_Me_f
address $168
address UI_Menu_f
address $169
address UI_MessageMode_f
address $170
address UI_MessageMode_f
address $171
address UI_Cache_f
address $172
address UI_Load
address $173
address UI_Report
export UI_ConsoleCommand
code
proc UI_ConsoleCommand 16 20
CNSTI4 0
ARGI4
ADDRLP4 4
ADDRGP4 UI_Argv
CALLP4
ASGNP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 commands
ARGP4
ADDRLP4 8
CNSTI4 8
ASGNI4
ADDRLP4 8
INDIRI4
ARGI4
ADDRLP4 8
INDIRI4
ARGI4
ADDRGP4 cmdcmp
ARGP4
ADDRLP4 12
ADDRGP4 bsearch
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 12
INDIRP4
ASGNP4
ADDRGP4 uiInfo+228
ADDRFP4 0
INDIRI4
ADDRGP4 uiInfo+224
INDIRI4
SUBI4
ASGNI4
ADDRGP4 uiInfo+224
ADDRFP4 0
INDIRI4
ASGNI4
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $178
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRP4
CALLV
pop
CNSTI4 1
RETI4
ADDRGP4 $174
JUMPV
LABELV $178
CNSTI4 0
RETI4
LABELV $174
endproc UI_ConsoleCommand 16 20
export UI_DrawNamedPic
proc UI_DrawNamedPic 16 36
ADDRFP4 16
INDIRP4
ARGP4
ADDRLP4 4
ADDRGP4 trap_R_RegisterShaderNoMip
CALLI4
ASGNI4
ADDRLP4 0
ADDRLP4 4
INDIRI4
ASGNI4
ADDRFP4 0
ARGP4
ADDRFP4 4
ARGP4
ADDRFP4 8
ARGP4
ADDRFP4 12
ARGP4
ADDRGP4 UI_AdjustFrom640
CALLV
pop
ADDRFP4 0
INDIRF4
ARGF4
ADDRFP4 4
INDIRF4
ARGF4
ADDRFP4 8
INDIRF4
ARGF4
ADDRFP4 12
INDIRF4
ARGF4
ADDRLP4 8
CNSTF4 0
ASGNF4
ADDRLP4 8
INDIRF4
ARGF4
ADDRLP4 8
INDIRF4
ARGF4
ADDRLP4 12
CNSTF4 1065353216
ASGNF4
ADDRLP4 12
INDIRF4
ARGF4
ADDRLP4 12
INDIRF4
ARGF4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 trap_R_DrawStretchPic
CALLV
pop
LABELV $180
endproc UI_DrawNamedPic 16 36
export UI_DrawHandlePic
proc UI_DrawHandlePic 16 36
ADDRFP4 8
INDIRF4
CNSTF4 0
GEF4 $182
ADDRFP4 8
ADDRFP4 8
INDIRF4
NEGF4
ASGNF4
ADDRLP4 0
CNSTF4 1065353216
ASGNF4
ADDRLP4 4
CNSTF4 0
ASGNF4
ADDRGP4 $183
JUMPV
LABELV $182
ADDRLP4 0
CNSTF4 0
ASGNF4
ADDRLP4 4
CNSTF4 1065353216
ASGNF4
LABELV $183
ADDRFP4 12
INDIRF4
CNSTF4 0
GEF4 $184
ADDRFP4 12
ADDRFP4 12
INDIRF4
NEGF4
ASGNF4
ADDRLP4 8
CNSTF4 1065353216
ASGNF4
ADDRLP4 12
CNSTF4 0
ASGNF4
ADDRGP4 $185
JUMPV
LABELV $184
ADDRLP4 8
CNSTF4 0
ASGNF4
ADDRLP4 12
CNSTF4 1065353216
ASGNF4
LABELV $185
ADDRFP4 0
ARGP4
ADDRFP4 4
ARGP4
ADDRFP4 8
ARGP4
ADDRFP4 12
ARGP4
ADDRGP4 UI_AdjustFrom640
CALLV
pop
ADDRFP4 0
INDIRF4
ARGF4
ADDRFP4 4
INDIRF4
ARGF4
ADDRFP4 8
INDIRF4
ARGF4
ADDRFP4 12
INDIRF4
ARGF4
ADDRLP4 0
INDIRF4
ARGF4
ADDRLP4 8
INDIRF4
ARGF4
ADDRLP4 4
INDIRF4
ARGF4
ADDRLP4 12
INDIRF4
ARGF4
ADDRFP4 16
INDIRI4
ARGI4
ADDRGP4 trap_R_DrawStretchPic
CALLV
pop
LABELV $181
endproc UI_DrawHandlePic 16 36
export UI_FillRect
proc UI_FillRect 4 36
ADDRFP4 16
INDIRP4
ARGP4
ADDRGP4 trap_R_SetColor
CALLV
pop
ADDRFP4 0
ARGP4
ADDRFP4 4
ARGP4
ADDRFP4 8
ARGP4
ADDRFP4 12
ARGP4
ADDRGP4 UI_AdjustFrom640
CALLV
pop
ADDRFP4 0
INDIRF4
ARGF4
ADDRFP4 4
INDIRF4
ARGF4
ADDRFP4 8
INDIRF4
ARGF4
ADDRFP4 12
INDIRF4
ARGF4
ADDRLP4 0
CNSTF4 0
ASGNF4
ADDRLP4 0
INDIRF4
ARGF4
ADDRLP4 0
INDIRF4
ARGF4
ADDRLP4 0
INDIRF4
ARGF4
ADDRLP4 0
INDIRF4
ARGF4
ADDRGP4 uiInfo+79736
INDIRI4
ARGI4
ADDRGP4 trap_R_DrawStretchPic
CALLV
pop
CNSTP4 0
ARGP4
ADDRGP4 trap_R_SetColor
CALLV
pop
LABELV $186
endproc UI_FillRect 4 36
export UI_SetColor
proc UI_SetColor 0 4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 trap_R_SetColor
CALLV
pop
LABELV $188
endproc UI_SetColor 0 4
import Q_vsnprintf
bss
export m_entersound
align 4
LABELV m_entersound
skip 4
import gettext
import Gettext
import trap_Gettext
import trap_SetPbClStatus
import trap_R_RemapShader
import trap_RealTime
import trap_CIN_SetExtents
import trap_CIN_DrawCinematic
import trap_CIN_RunCinematic
import trap_CIN_StopCinematic
import trap_CIN_PlayCinematic
import trap_S_StartBackgroundTrack
import trap_S_StopBackgroundTrack
import FreeCachedGlyphs
import Glyph
import FreeGlyph
import LoadGlyph
import FreeFace
import LoadFace
import trap_R_FreeCachedGlyphs
import trap_R_Glyph
import trap_R_FreeGlyph
import trap_R_LoadGlyph
import trap_R_FreeFace
import trap_R_LoadFace
import trap_R_RegisterFont
import trap_MemoryRemaining
import trap_LAN_CompareServers
import trap_GetNews
import trap_LAN_ServerStatus
import trap_LAN_ResetPings
import trap_LAN_RemoveServer
import trap_LAN_AddServer
import trap_LAN_UpdateVisiblePings
import trap_LAN_ServerIsVisible
import trap_LAN_MarkServerVisible
import trap_LAN_SaveCachedServers
import trap_LAN_LoadCachedServers
import trap_LAN_GetPingInfo
import trap_LAN_GetPing
import trap_LAN_ClearPing
import trap_LAN_GetPingQueueCount
import trap_LAN_GetServerPing
import trap_LAN_GetServerInfo
import trap_LAN_GetServerAddressString
import trap_LAN_GetServerCount
import trap_GetConfigString
import trap_GetGlconfig
import trap_GetClientState
import trap_GetClipboardData
import trap_Key_SetCatcher
import trap_Key_GetCatcher
import trap_Key_ClearStates
import trap_Key_SetOverstrikeMode
import trap_Key_GetOverstrikeMode
import trap_Key_IsDown
import trap_Key_SetBinding
import trap_Key_GetBindingBuf
import trap_Key_KeynumToStringBuf
import trap_S_RegisterSound
import trap_S_StartLocalSound
import trap_CM_LerpTag
import trap_UpdateScreen
import trap_R_ModelBounds
import trap_R_DrawStretchPic
import trap_R_SetColor
import trap_R_RenderScene
import trap_R_AddLightToScene
import trap_R_AddPolyToScene
import trap_R_AddRefEntityToScene
import trap_R_ClearScene
import trap_R_RegisterShaderNoMip
import trap_R_RegisterSkin
import trap_R_RegisterModel
import trap_FS_Seek
import trap_FS_GetFileList
import trap_FS_FCloseFile
import trap_FS_Write
import trap_FS_Read
import trap_FS_FOpenFile
import trap_Cmd_ExecuteText
import trap_Argv
import trap_Argc
import trap_Cvar_InfoStringBuffer
import trap_Cvar_Create
import trap_Cvar_Reset
import trap_Cvar_SetValue
import trap_Cvar_VariableStringBuffer
import trap_Cvar_VariableValue
import trap_Cvar_Set
import trap_Cvar_Update
import trap_Cvar_Register
import trap_Milliseconds
import trap_Error
import trap_Print
import UI_Refresh
import UI_AdjustFrom640
import uiInfo
import UI_DrawConnectScreen
import UI_UpdateCvars
import UI_RegisterCvars
import UI_UpdateNews
import UI_ServerInfo
import UI_LoadArenas
import UI_ClearScores
import UI_AdjustTimeByGame
import UI_LoadMenus
import UI_Load
import UI_Report
import g_nameBind2
import g_nameBind1
import BindingFromName
import trap_Parse_SourceFileAndLine
import trap_Parse_ReadToken
import trap_Parse_FreeSource
import trap_Parse_LoadSource
import trap_Parse_AddGlobalDefine
import UI_EscapeEmoticons
import UI_Text_IsEmoticon
import UI_Text_EmHeight
import UI_Text_EmWidth
import UI_Text_Height
import UI_Text_Width
import UI_Text_Paint_Limit
import UI_Text_Paint
import UI_DrawTextBlock
import Item_Text_Wrap
import Item_Text_Wrapped_Paint
import UI_Glyph
import trap_R_SetClipRegion
import Controls_SetDefaults
import Controls_SetConfig
import Controls_GetConfig
import UI_OutOfMemory
import UI_InitMemory
import UI_Alloc
import UI_RemoveCaptureFunc
import UI_InstallCaptureFunc
import Display_CacheAll
import Menu_SetFeederSelection
import Menu_Paint
import Menu_Update
import Menus_CloseAll
import LerpColor
import Display_HandleKey
import Menus_CloseByName
import Menus_FindByName
import Display_KeyBindPending
import Display_CursorType
import Display_MouseMove
import Display_CaptureItem
import Display_GetContext
import Menus_ReplaceActive
import Menus_Activate
import Menus_AnyFullScreenVisible
import Menu_Reset
import Menus_ReplaceActiveByName
import Menus_ActivateByName
import Menu_PaintAll
import Menu_UpdateAll
import Menu_New
import Menu_Count
import PC_Script_Parse
import PC_String_Parse
import PC_Rect_Parse
import PC_Int_Parse
import PC_Color_Parse
import PC_Float_Parse
import Script_Parse
import String_Parse
import Rect_Parse
import Int_Parse
import Color_Parse
import Float_Parse
import Menu_ScrollFeeder
import Menu_HandleMouseMove
import Menu_HandleKey
import Menu_GetFocused
import Menu_PostParse
import Item_Init
import Menu_Init
import Display_ExpandMacros
import Init_Display
import String_Report
import String_Init
import String_Alloc
import UIS_Shutdown
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
LABELV $173
byte 1 117
byte 1 105
byte 1 95
byte 1 114
byte 1 101
byte 1 112
byte 1 111
byte 1 114
byte 1 116
byte 1 0
align 1
LABELV $172
byte 1 117
byte 1 105
byte 1 95
byte 1 108
byte 1 111
byte 1 97
byte 1 100
byte 1 0
align 1
LABELV $171
byte 1 117
byte 1 105
byte 1 95
byte 1 99
byte 1 97
byte 1 99
byte 1 104
byte 1 101
byte 1 0
align 1
LABELV $170
byte 1 109
byte 1 101
byte 1 115
byte 1 115
byte 1 97
byte 1 103
byte 1 101
byte 1 109
byte 1 111
byte 1 100
byte 1 101
byte 1 50
byte 1 0
align 1
LABELV $169
byte 1 109
byte 1 101
byte 1 115
byte 1 115
byte 1 97
byte 1 103
byte 1 101
byte 1 109
byte 1 111
byte 1 100
byte 1 101
byte 1 0
align 1
LABELV $168
byte 1 109
byte 1 101
byte 1 110
byte 1 117
byte 1 0
align 1
LABELV $167
byte 1 109
byte 1 101
byte 1 0
align 1
LABELV $166
byte 1 99
byte 1 108
byte 1 111
byte 1 115
byte 1 101
byte 1 109
byte 1 101
byte 1 110
byte 1 117
byte 1 115
byte 1 0
align 1
LABELV $165
byte 1 37
byte 1 115
byte 1 32
byte 1 34
byte 1 47
byte 1 109
byte 1 101
byte 1 32
byte 1 37
byte 1 115
byte 1 34
byte 1 0
align 1
LABELV $157
byte 1 115
byte 1 97
byte 1 121
byte 1 95
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 0
align 1
LABELV $156
byte 1 115
byte 1 97
byte 1 121
byte 1 0
align 1
LABELV $147
byte 1 0
align 1
LABELV $146
byte 1 117
byte 1 105
byte 1 95
byte 1 115
byte 1 97
byte 1 121
byte 1 66
byte 1 117
byte 1 102
byte 1 102
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $144
byte 1 48
byte 1 0
align 1
LABELV $143
byte 1 99
byte 1 108
byte 1 95
byte 1 112
byte 1 97
byte 1 117
byte 1 115
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $118
byte 1 100
byte 1 49
byte 1 10
byte 1 0
