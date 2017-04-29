code

equ trap_Print                        -1
equ trap_Error                        -2
equ trap_Milliseconds                 -3
equ trap_Cvar_Register                -4
equ trap_Cvar_Update                  -5
equ trap_Cvar_Set                     -6
equ trap_Cvar_VariableStringBuffer    -7
equ trap_Argc                         -8
equ trap_Argv                         -9
equ trap_Args                         -10
equ trap_FS_FOpenFile                 -11
equ trap_FS_Read                      -12
equ trap_FS_Write                     -13 
equ trap_FS_FCloseFile                -14
equ trap_SendConsoleCommand           -15
equ trap_AddCommand                   -16
equ trap_SendClientCommand            -17
equ trap_UpdateScreen                 -18
equ trap_CM_LoadMap                   -19
equ trap_CM_NumInlineModels           -20
equ trap_CM_InlineModel               -21
equ trap_CM_LoadModel                 -22
equ trap_CM_TempBoxModel              -23
equ trap_CM_PointContents             -24
equ trap_CM_TransformedPointContents  -25
equ trap_CM_BoxTrace                  -26
equ trap_CM_TransformedBoxTrace       -27
equ trap_CM_MarkFragments             -28
equ trap_S_StartSound                 -29
equ trap_S_StartLocalSound            -30
equ trap_S_ClearLoopingSounds         -31
equ trap_S_AddLoopingSound            -32
equ trap_S_UpdateEntityPosition       -33
equ trap_S_Respatialize               -34
equ trap_S_RegisterSound              -35
equ trap_S_StartBackgroundTrack       -36
equ trap_R_LoadWorldMap               -37
equ trap_R_RegisterModel              -38
equ trap_R_RegisterSkin               -39
equ trap_R_RegisterShader             -40
equ trap_R_ClearScene                 -41
equ trap_R_AddRefEntityToScene        -42
equ trap_R_AddPolyToScene             -43
equ trap_R_AddLightToScene            -44
equ trap_R_RenderScene                -45
equ trap_R_SetColor                   -46
equ trap_R_SetClipRegion              -47
equ trap_R_DrawStretchPic             -48
equ trap_R_ModelBounds                -49
equ trap_R_LerpTag                    -50
equ trap_GetGlconfig                  -51
equ trap_GetGameState                 -52
equ trap_GetCurrentSnapshotNumber     -53
equ trap_GetSnapshot                  -54
equ trap_GetServerCommand             -55
equ trap_GetCurrentCmdNumber          -56
equ trap_GetUserCmd                   -57
equ trap_SetUserCmdValue              -58
equ trap_R_RegisterShaderNoMip        -59
equ trap_MemoryRemaining              -60
equ trap_R_RegisterFont               -61
equ trap_Key_IsDown                   -62
equ trap_Key_GetCatcher               -63
equ trap_Key_SetCatcher               -64
equ trap_Key_GetKey                   -65
equ trap_S_StopBackgroundTrack        -66
equ trap_RealTime                     -67
equ trap_SnapVector                   -68
equ trap_RemoveCommand                -69
equ trap_R_LightForPoint              -70
equ trap_CIN_PlayCinematic            -71
equ trap_CIN_StopCinematic            -72
equ trap_CIN_RunCinematic             -73
equ trap_CIN_DrawCinematic            -74
equ trap_CIN_SetExtents               -75
equ trap_R_RemapShader                -76
equ trap_S_AddRealLoopingSound        -77
equ trap_S_StopLoopingSound           -78
equ trap_CM_TempCapsuleModel          -79
equ trap_CM_CapsuleTrace              -80
equ trap_CM_TransformedCapsuleTrace   -81
equ trap_R_AddAdditiveLightToScene    -82
equ trap_GetEntityToken               -83
equ trap_R_AddPolysToScene            -84
equ trap_R_inPVS                      -85
equ trap_FS_Seek                      -86
equ trap_FS_GetFileList               -87
equ trap_LiteralArgs                  -88
equ trap_CM_BiSphereTrace             -89
equ trap_CM_TransformedBiSphereTrace  -90
equ trap_GetDemoState                 -91
equ trap_GetDemoPos                   -92
equ trap_GetDemoName                  -93
equ trap_Key_KeynumToStringBuf        -94
equ trap_Key_GetBindingBuf            -95
equ trap_Key_SetBinding               -96

equ trap_Parse_AddGlobalDefine        -97
equ trap_Parse_LoadSource             -98
equ trap_Parse_FreeSource             -99
equ trap_Parse_ReadToken              -100
equ trap_Parse_SourceFileAndLine      -101
equ trap_Key_SetOverstrikeMode        -102
equ trap_Key_GetOverstrikeMode        -103

equ trap_S_SoundDuration              -104

equ memset                            -201
equ memcpy                            -202
equ strncpy                           -203
equ sin                               -204
equ cos                               -205
equ atan2                             -206
equ sqrt                              -207
equ floor                             -208
equ ceil                              -209
equ testPrintInt                      -210
equ testPrintFloat                    -211

equ trap_R_LoadFace                   -302
equ trap_R_FreeFace                   -303
equ trap_R_LoadGlyph                  -304
equ trap_R_FreeGlyph                  -305
equ trap_R_Glyph                      -306
equ trap_R_FreeCachedGlyphs           -307
