export G_namelog_cleanup
code
proc G_namelog_cleanup 12 4
ADDRLP4 0
ADDRGP4 level+17148
INDIRP4
ASGNP4
ADDRGP4 $83
JUMPV
LABELV $80
ADDRLP4 4
ADDRLP4 0
INDIRP4
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 BG_Free
CALLV
pop
LABELV $81
ADDRLP4 0
ADDRLP4 4
INDIRP4
ASGNP4
LABELV $83
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $80
LABELV $79
endproc G_namelog_cleanup 12 4
export G_namelog_connect
proc G_namelog_connect 52 16
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 8
CNSTP4 0
ASGNP4
ADDRLP4 0
ADDRGP4 level+17148
INDIRP4
ASGNP4
ADDRGP4 $89
JUMPV
LABELV $86
ADDRLP4 0
INDIRP4
CNSTI4 540
ADDP4
INDIRI4
CNSTI4 -1
EQI4 $91
ADDRGP4 $87
JUMPV
LABELV $91
ADDRFP4 0
INDIRP4
CNSTI4 588
ADDP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 504
ADDP4
ARGP4
ADDRLP4 16
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 16
INDIRI4
CNSTI4 0
NEI4 $93
ADDRGP4 $88
JUMPV
LABELV $93
LABELV $87
ADDRLP4 8
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 0
ADDRLP4 0
INDIRP4
INDIRP4
ASGNP4
LABELV $89
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $86
LABELV $88
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $95
CNSTI4 580
ARGI4
ADDRLP4 20
ADDRGP4 BG_Alloc
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 20
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 504
ADDP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 588
ADDP4
ARGP4
ADDRGP4 strcpy
CALLP4
pop
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $97
ADDRLP4 8
INDIRP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRGP4 $98
JUMPV
LABELV $97
ADDRGP4 level+17148
ADDRLP4 0
INDIRP4
ASGNP4
LABELV $98
LABELV $95
ADDRFP4 0
INDIRP4
CNSTI4 540
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 540
ADDP4
ADDRFP4 0
INDIRP4
CVPU4 4
ADDRGP4 level
INDIRP4
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 2456
DIVI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 544
ADDP4
CNSTI4 0
ASGNI4
ADDRLP4 24
CNSTI4 5
ASGNI4
ADDRLP4 12
ADDRLP4 0
INDIRP4
CNSTI4 552
ADDP4
INDIRI4
ADDRLP4 24
INDIRI4
MODI4
ADDRLP4 24
INDIRI4
LSHI4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
ADDP4
ASGNP4
ADDRLP4 32
CNSTI4 0
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 560
ADDP4
INDIRI4
ADDRLP4 32
INDIRI4
EQI4 $100
CNSTI4 1668
ADDRLP4 0
INDIRP4
CNSTI4 540
ADDP4
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRLP4 12
INDIRP4
ARGP4
CNSTP4 0
ARGP4
ADDRLP4 32
INDIRI4
ARGI4
ADDRLP4 36
ADDRGP4 G_admin_name_check
CALLI4
ASGNI4
ADDRLP4 36
INDIRI4
CNSTI4 0
EQI4 $100
ADDRFP4 0
INDIRP4
CNSTI4 468
ADDP4
ARGP4
ADDRLP4 12
INDIRP4
ARGP4
CNSTI4 32
ARGI4
ADDRGP4 Q_strncpyz
CALLV
pop
LABELV $100
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $105
JUMPV
LABELV $102
CNSTI4 68
ADDRLP4 4
INDIRI4
MULI4
ADDRLP4 0
INDIRP4
CNSTI4 164
ADDP4
ADDP4
CNSTI4 24
ADDP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 648
ADDP4
ARGP4
ADDRLP4 40
ADDRGP4 strcmp
CALLI4
ASGNI4
ADDRLP4 40
INDIRI4
CNSTI4 0
NEI4 $106
ADDRGP4 $85
JUMPV
LABELV $106
LABELV $103
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $105
ADDRLP4 4
INDIRI4
CNSTI4 5
GEI4 $108
CNSTI4 68
ADDRLP4 4
INDIRI4
MULI4
ADDRLP4 0
INDIRP4
CNSTI4 164
ADDP4
ADDP4
CNSTI4 24
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $102
LABELV $108
ADDRLP4 4
INDIRI4
CNSTI4 5
NEI4 $109
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
LABELV $109
ADDRLP4 48
CNSTI4 68
ASGNI4
ADDRLP4 48
INDIRI4
ADDRLP4 4
INDIRI4
MULI4
ADDRLP4 0
INDIRP4
CNSTI4 164
ADDP4
ADDP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 624
ADDP4
ARGP4
ADDRLP4 48
INDIRI4
ARGI4
ADDRGP4 memcpy
CALLP4
pop
LABELV $85
endproc G_namelog_connect 52 16
export G_namelog_disconnect
proc G_namelog_disconnect 4 0
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 540
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $112
ADDRGP4 $111
JUMPV
LABELV $112
ADDRLP4 0
CNSTI4 540
ASGNI4
ADDRFP4 0
INDIRP4
ADDRLP4 0
INDIRI4
ADDP4
INDIRP4
ADDRLP4 0
INDIRI4
ADDP4
CNSTI4 -1
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 540
ADDP4
CNSTP4 0
ASGNP4
LABELV $111
endproc G_namelog_disconnect 4 0
export G_namelog_update_score
proc G_namelog_update_score 4 0
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 540
ADDP4
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $115
ADDRGP4 $114
JUMPV
LABELV $115
ADDRLP4 0
INDIRP4
CNSTI4 576
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 532
ADDP4
INDIRI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 568
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 256
ADDP4
INDIRI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 572
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
ASGNI4
LABELV $114
endproc G_namelog_update_score 4 0
export G_namelog_update_name
proc G_namelog_update_name 88 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 36
ADDRFP4 0
INDIRP4
CNSTI4 540
ADDP4
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 468
ADDP4
ARGP4
ADDRLP4 40
ARGP4
CNSTI4 32
ARGI4
ADDRGP4 G_SanitiseString
CALLV
pop
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $121
JUMPV
LABELV $118
ADDRLP4 0
INDIRI4
CNSTI4 5
LSHI4
ADDRLP4 36
INDIRP4
CNSTI4 4
ADDP4
ADDP4
ARGP4
ADDRLP4 4
ARGP4
CNSTI4 32
ARGI4
ADDRGP4 G_SanitiseString
CALLV
pop
ADDRLP4 40
ARGP4
ADDRLP4 4
ARGP4
ADDRLP4 72
ADDRGP4 strcmp
CALLI4
ASGNI4
ADDRLP4 72
INDIRI4
CNSTI4 0
NEI4 $122
ADDRGP4 $117
JUMPV
LABELV $122
LABELV $119
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $121
ADDRLP4 76
CNSTI4 5
ASGNI4
ADDRLP4 0
INDIRI4
ADDRLP4 76
INDIRI4
GEI4 $124
ADDRLP4 0
INDIRI4
ADDRLP4 76
INDIRI4
LSHI4
ADDRLP4 36
INDIRP4
CNSTI4 4
ADDP4
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $118
LABELV $124
ADDRLP4 84
CNSTI4 5
ASGNI4
ADDRLP4 36
INDIRP4
CNSTI4 552
ADDP4
INDIRI4
ADDRLP4 84
INDIRI4
MODI4
ADDRLP4 84
INDIRI4
LSHI4
ADDRLP4 36
INDIRP4
CNSTI4 4
ADDP4
ADDP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 468
ADDP4
ARGP4
ADDRGP4 strcpy
CALLP4
pop
LABELV $117
endproc G_namelog_update_name 88 12
export G_namelog_restore
proc G_namelog_restore 8 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 540
ADDP4
INDIRP4
ASGNP4
CNSTI4 1668
ADDRLP4 0
INDIRP4
CNSTI4 540
ADDP4
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 576
ADDP4
INDIRI4
ARGI4
ADDRGP4 G_ChangeTeam
CALLV
pop
ADDRFP4 0
INDIRP4
CNSTI4 256
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 568
ADDP4
INDIRI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 288
ADDP4
CNSTI4 0
ASGNI4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 572
ADDP4
INDIRI4
CVII2 4
CVII4 2
ARGI4
CNSTI4 0
ARGI4
ADDRGP4 G_AddCreditToClient
CALLV
pop
LABELV $125
endproc G_namelog_restore 8 12
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
