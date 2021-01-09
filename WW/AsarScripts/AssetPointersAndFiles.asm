; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!WW_U = $0001
!WW_E = $0002

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl UnknownDataPointersStart,(UnknownDataPointersEnd-UnknownDataPointersStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl GlobalBRRPointersStart,(GlobalBRRPointersEnd-GlobalBRRPointersStart)/$0C
	dl StreamedBRRPointersStart,(StreamedBRRPointersEnd-StreamedBRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $9F8000,$A08000,GFX_9F8000,GFX_9F8000End
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $91A0B4,$91BE7E,GFX_GlobalFGTiles,GFX_GlobalFGTilesEnd
	dl $91BE7E,$91C357,GFX_Layer2_RoundGame_GrasslandLevel,GFX_Layer2_RoundGame_GrasslandLevelEnd
	dl $91C357,$91C525,GFX_Layer3_RoundGame_GrasslandLevel,GFX_Layer3_RoundGame_GrasslandLevelEnd
	dl $91C525,$91CA98,GFX_Layer2_RoundGame_MountainLevel,GFX_Layer2_RoundGame_MountainLevelEnd
	dl $91CA98,$91CC5E,GFX_Layer3_RoundGame_MountainLevel,GFX_Layer3_RoundGame_MountainLevelEnd
	dl $91CC5E,$91D24C,GFX_Layer2_RoundGame_IceLevel,GFX_Layer2_RoundGame_IceLevelEnd
	dl $91D24C,$91D824,GFX_Layer3_RoundGame_IceLevel,GFX_Layer3_RoundGame_IceLevelEnd
	dl $91D824,$91DECD,GFX_Layer2_RoundGame_ForestLevel,GFX_Layer2_RoundGame_ForestLevelEnd
	dl $91DECD,$91E493,GFX_Layer3_RoundGame_ForestLevel,GFX_Layer3_RoundGame_ForestLevelEnd
	dl $91E493,$91EFE6,GFX_Layer2_RoundGame_CastleLevel,GFX_Layer2_RoundGame_CastleLevelEnd
	dl $91EFE6,$91F36D,GFX_Layer3_RoundGame_CastleLevel,GFX_Layer3_RoundGame_CastleLevelEnd
	dl $91F36D,$92846E,GFX_Layer2_VsCOM_ForestLevel,GFX_Layer2_VsCOM_ForestLevelEnd
	dl $92846E,$929A0D,GFX_Layer2_VsCOM_CaveLevel,GFX_Layer2_VsCOM_CaveLevelEnd
	dl $929A0D,$929B1C,GFX_Layer3_VsCOM_CaveLevel,GFX_Layer3_VsCOM_CaveLevelEnd
	dl $929B1C,$92B1E3,GFX_Layer2_VsCOM_GardenLevel,GFX_Layer2_VsCOM_GardenLevelEnd
	dl $92B1E3,$92BDCD,GFX_Layer2_VsCOM_MountainLevel,GFX_Layer2_VsCOM_MountainLevelEnd
	dl $92BDCD,$92CAD2,GFX_Layer2_VsCOM_CastleLevel,GFX_Layer2_VsCOM_CastleLevelEnd
	dl $92CAD2,$92CC67,GFX_Layer3_VsCOM_CastleLevel,GFX_Layer3_VsCOM_CastleLevelEnd
	dl $92CC67,$92E305,GFX_Layer2_TutorialLevel,GFX_Layer2_TutorialLevelEnd
	dl $92E305,$92E360,GFX_TutorialLevel_AltButtonSettingTiles,GFX_TutorialLevel_AltButtonSettingTilesEnd
	dl $92E360,$92E3EE,GFX_BirdoSpeechBubbleTiles,GFX_BirdoSpeechBubbleTilesEnd
	dl $92E3EE,$92F55D,GFX_TimeRaceMenuTiles,GFX_TimeRaceMenuTilesEnd
	dl $92F55D,$92FE96,GFX_PlayerRecordsMenuTiles,GFX_PlayerRecordsMenuTilesEnd
	dl $92FE96,$938998,GFX_AllTimeRecordsMenuTiles,GFX_AllTimeRecordsMenuTilesEnd
	dl $938998,$938EA2,GFX_RoundSelectMenuLeaves,GFX_RoundSelectMenuLeavesEnd
	dl $938EA2,$939C87,GFX_Layer2_MainMenuBG1,GFX_Layer2_MainMenuBG1End
	dl $939C87,$93AE86,GFX_Layer2_MainMenuBG2,GFX_Layer2_MainMenuBG2End
	dl $93AE86,$93B34F,GFX_Layer3_BirdoSpeechFont,GFX_Layer3_BirdoSpeechFontEnd
	dl $93B34F,$93B800,GFX_Layer3_MediumFont,GFX_Layer3_MediumFontEnd
	dl $93B800,$93BCDF,GFX_Layer3_LargeFontWithShadow,GFX_Layer3_LargeFontWithShadowEnd
	dl $93BCDF,$93BE5F,GFX_Layer3_DataConfirmScreenNumbers,GFX_Layer3_DataConfirmScreenNumbersEnd
	dl $93BE5F,$93BFD5,GFX_Layer3_Numbers,GFX_Layer3_NumbersEnd
	dl $93BFD5,$93C14B,GFX_Layer3_Vs2PSaveDataNumbers,GFX_Layer3_Vs2PSaveDataNumbersEnd
	dl $93C14B,$93C611,GFX_Layer3_MenuBordersVSWinLoseXO,GFX_Layer3_MenuBordersVSWinLoseXOEnd
	dl $93C611,$93CF88,GFX_Layer3_VsCOM_WinLoseScreenFont,GFX_Layer3_VsCOM_WinLoseScreenFontEnd
	dl $93CF88,$93D89D,GFX_Layer3_LargeFont,GFX_Layer3_LargeFontEnd
	dl $93D89D,$93E410,GFX_Layer3_OptionsMenuFont,GFX_Layer3_OptionsMenuFontEnd
	dl $93E410,$93E930,GFX_Layer3_SmallFont,GFX_Layer3_SmallFontEnd
	dl $93E930,$93ED32,GFX_Layer3_GameSelectMenuChoices,GFX_Layer3_GameSelectMenuChoicesEnd
	dl $93ED32,$93F1BA,GFX_Layer3_Vs2PLevelSelectMenu,GFX_Layer3_Vs2PLevelSelectMenuEnd
	dl $93F1BA,$93F33A,GFX_Layer3_VsCOMMenuChoices,GFX_Layer3_VsCOMMenuChoicesEnd
	dl $93F33A,$93F836,GFX_Layer3_NameEntryMenuChoices,GFX_Layer3_NameEntryMenuChoicesEnd
	dl $93F836,$93F979,GFX_Layer3_RoundGameMenuNumbers,GFX_Layer3_RoundGameMenuNumbersEnd
	dl $93F979,$93FAA3,GFX_Layer3_Data1234,GFX_Layer3_Data1234End
	dl $93FAA3,$93FF0E,GFX_Layer3_OptionsMenuChoices,GFX_Layer3_OptionsMenuChoicesEnd
	dl $93FF0E,$94833B,GFX_Layer3_LessonMenuChoices,GFX_Layer3_LessonMenuChoicesEnd
	dl $94833B,$9485EF,GFX_Layer3_VsCOM_TheEnd,GFX_Layer3_VsCOM_TheEndEnd
	dl $9485EF,$9495B4,GFX_Layer1_VsCOM_SpeakBubbleFont,GFX_Layer1_VsCOM_SpeakBubbleFontEnd
	dl $9495B4,$94B890,GFX_Layer2_VsCOM_ForestClearingCutsceneBG,GFX_Layer2_VsCOM_ForestClearingCutsceneBGEnd
	dl $94B890,$94B9E7,GFX_Layer3_VsCOM_ForestClearingCutsceneBG,GFX_Layer3_VsCOM_ForestClearingCutsceneBGEnd
	dl $94B9E7,$94D1B5,GFX_Layer3_VsCOM_CaveCutsceneBG,GFX_Layer3_VsCOM_CaveCutsceneBGEnd
	dl $94D1B5,$94EFD8,GFX_Layer3_VsCOM_GardenCutsceneBG,GFX_Layer3_VsCOM_GardenCutsceneBGEnd
	dl $94EFD8,$94F98B,GFX_Layer3_VsCOM_MountainCutsceneBG,GFX_Layer3_VsCOM_MountainCutsceneBGEnd
	dl $94F98B,$958802,GFX_Layer2_VsCOM_CastleCutsceneBG,GFX_Layer2_VsCOM_CastleCutsceneBGEnd
	dl $958802,$9588CC,GFX_Layer3_VsCOM_CastleCutsceneBG,GFX_Layer3_VsCOM_CastleCutsceneBGEnd
	dl $9588CC,$95A647,GFX_Layer1_TitleScreen,GFX_Layer1_TitleScreenEnd
	dl $95A647,$95B44F,GFX_Layer2_TitleScreenWario,GFX_Layer2_TitleScreenWarioEnd
	dl $95B44F,$95B81B,GFX_Layer3_TitleScreenClouds,GFX_Layer3_TitleScreenCloudsEnd
	dl $95B81B,$95BA70,GFX_Layer3_PlayerRecords,GFX_Layer3_PlayerRecordsEnd
	dl $95BA70,$95BCB2,GFX_Layer3_AllTimeRecords,GFX_Layer3_AllTimeRecordsEnd
	dl $95BCB2,$95CB32,GFX_Layer1_RecordScreen3,GFX_Layer1_RecordScreen3End
	dl $95CB32,$95E2A6,GFX_Layer2_RecordScreen3,GFX_Layer2_RecordScreen3End
	dl $95E2A6,$95E55D,GFX_Layer3_RecordScreen3Rankings,GFX_Layer3_RecordScreen3RankingsEnd
	dl $95E55D,$95EB93,GFX_Layer3_RecordScreen3Letters,GFX_Layer3_RecordScreen3LettersEnd
	dl $95EB93,$968E53,GFX_Layer1_RoundGameCutscene,GFX_Layer1_RoundGameCutsceneEnd
	dl $968E53,$9698C7,GFX_Layer2_RoundGameCutscene,GFX_Layer2_RoundGameCutsceneEnd
	dl $9698C7,$969E64,GFX_RoundGameEnding_BG,GFX_RoundGameEnding_BGEnd
	dl $969E64,$96B176,GFX_RoundGameEnding_WariosCastle,GFX_RoundGameEnding_WariosCastleEnd
	dl $96B176,$96B17C,GFX_VsCOM_Credits_BlackBorder,GFX_VsCOM_Credits_BlackBorderEnd
	dl $96B17C,$96BD74,GFX_VsCOM_EndingNintendoLogo,GFX_VsCOM_EndingNintendoLogoEnd
	dl $96BD74,$96D442,GFX_Sprite_Global,GFX_Sprite_GlobalEnd
	dl $96D442,$96E5DB,GFX_Sprite_RoundGameBirdo,GFX_Sprite_RoundGameBirdoEnd
	dl $96E5DB,$96FA91,GFX_Sprite_RoundGameWario,GFX_Sprite_RoundGameWarioEnd
	dl $96FA91,$978EF3,GFX_Sprite_2PToad,GFX_Sprite_2PToadEnd
	dl $978EF3,$979862,GFX_Sprite_Menus_Birdo,GFX_Sprite_Menus_BirdoEnd
	dl $979862,$97B156,GFX_Sprite_GameSelectIcons,GFX_Sprite_GameSelectIconsEnd
	dl $97B156,$97CFFD,GFX_Sprite_VsCOM_DifficultyMenuOpponents,GFX_Sprite_VsCOM_DifficultyMenuOpponentsEnd
	dl $97CFFD,$97D52E,GFX_Sprite_Vs2P_LevelSelectWindows,GFX_Sprite_Vs2P_LevelSelectWindowsEnd
	dl $97D52E,$97E791,GFX_Sprite_Options_ButtonSelectWindows,GFX_Sprite_Options_ButtonSelectWindowsEnd
	dl $97E791,$97E958,GFX_Sprite_RoundGameMenu_Numbers,GFX_Sprite_RoundGameMenu_NumbersEnd
	dl $97E958,$97F3B8,GFX_Sprite_VsCOM_Toad_Main,GFX_Sprite_VsCOM_Toad_MainEnd
	dl $97F3B8,$9886F1,GFX_Sprite_VsCOM_Katsini_Main,GFX_Sprite_VsCOM_Katsini_MainEnd
	dl $9886F1,$989ADF,GFX_Sprite_VsCOM_Galrog_Main,GFX_Sprite_VsCOM_Galrog_MainEnd
	dl $989ADF,$98AE0A,GFX_Sprite_VsCOM_HarleyQ_Main,GFX_Sprite_VsCOM_HarleyQ_MainEnd
	dl $98AE0A,$98C147,GFX_Sprite_VsCOM_SamSpook_Main,GFX_Sprite_VsCOM_SamSpook_MainEnd
	dl $98C147,$98D4B5,GFX_Sprite_VsCOM_Sven_Main,GFX_Sprite_VsCOM_Sven_MainEnd
	dl $98D4B5,$98EAB1,GFX_Sprite_VsCOM_Parrotor_Main,GFX_Sprite_VsCOM_Parrotor_MainEnd
	dl $98EAB1,$98FCD6,GFX_Sprite_VsCOM_MssrBoo_Main,GFX_Sprite_VsCOM_MssrBoo_MainEnd
	dl $98FCD6,$99903F,GFX_Sprite_VsCOM_Aqualea_Main,GFX_Sprite_VsCOM_Aqualea_MainEnd
	dl $99903F,$99A368,GFX_Sprite_VsCOM_Razor_Main,GFX_Sprite_VsCOM_Razor_MainEnd
	dl $99A368,$99B7DD,GFX_Sprite_VsCOM_TadRock_Main,GFX_Sprite_VsCOM_TadRock_MainEnd
	dl $99B7DD,$99CCEC,GFX_Sprite_VsCOM_Thak_Main,GFX_Sprite_VsCOM_Thak_MainEnd
	dl $99CCEC,$99DF9A,GFX_Sprite_VsCOM_Lizardon_Main,GFX_Sprite_VsCOM_Lizardon_MainEnd
	dl $99DF9A,$99F220,GFX_Sprite_VsCOM_Sarissa_Main,GFX_Sprite_VsCOM_Sarissa_MainEnd
	dl $99F220,$9A854C,GFX_Sprite_VsCOM_Mangylox_Main,GFX_Sprite_VsCOM_Mangylox_MainEnd
	dl $9A854C,$9A96E3,GFX_Sprite_VsCOM_Dedar_Main,GFX_Sprite_VsCOM_Dedar_MainEnd
	dl $9A96E3,$9AAAF9,GFX_Sprite_VsCOM_Carlton_Main,GFX_Sprite_VsCOM_Carlton_MainEnd
	dl $9AAAF9,$9ABE4D,GFX_Sprite_VsCOM_HarryH_Main,GFX_Sprite_VsCOM_HarryH_MainEnd
	dl $9ABE4D,$9AD1C8,GFX_Sprite_VsCOM_Wario_Main,GFX_Sprite_VsCOM_Wario_MainEnd
	dl $9AD1C8,$9AD9E9,GFX_Sprite_VsCOM_Toad_Win,GFX_Sprite_VsCOM_Toad_WinEnd
	dl $9AD9E9,$9AE36A,GFX_Sprite_VsCOM_Katsini_Win,GFX_Sprite_VsCOM_Katsini_WinEnd
	dl $9AE36A,$9AEEED,GFX_Sprite_VsCOM_Galrog_Win,GFX_Sprite_VsCOM_Galrog_WinEnd
	dl $9AEEED,$9AF826,GFX_Sprite_VsCOM_HarleyQ_Win,GFX_Sprite_VsCOM_HarleyQ_WinEnd
	dl $9AF826,$9B8268,GFX_Sprite_VsCOM_SamSpook_Win,GFX_Sprite_VsCOM_SamSpook_WinEnd
	dl $9B8268,$9B8C4E,GFX_Sprite_VsCOM_Sven_Win,GFX_Sprite_VsCOM_Sven_WinEnd
	dl $9B8C4E,$9B98BD,GFX_Sprite_VsCOM_Parrotor_Win,GFX_Sprite_VsCOM_Parrotor_WinEnd
	dl $9B98BD,$9B9F80,GFX_Sprite_VsCOM_MssrBoo_Win,GFX_Sprite_VsCOM_MssrBoo_WinEnd
	dl $9B9F80,$9BAB64,GFX_Sprite_VsCOM_Aqualea_Win,GFX_Sprite_VsCOM_Aqualea_WinEnd
	dl $9BAB64,$9BB612,GFX_Sprite_VsCOM_Razor_Win,GFX_Sprite_VsCOM_Razor_WinEnd
	dl $9BB612,$9BC011,GFX_Sprite_VsCOM_TadRock_Win,GFX_Sprite_VsCOM_TadRock_WinEnd
	dl $9BC011,$9BCA3F,GFX_Sprite_VsCOM_Thak_Win,GFX_Sprite_VsCOM_Thak_WinEnd
	dl $9BCA3F,$9BD502,GFX_Sprite_VsCOM_Lizardon_Win,GFX_Sprite_VsCOM_Lizardon_WinEnd
	dl $9BD502,$9BDED3,GFX_Sprite_VsCOM_Sarissa_Win,GFX_Sprite_VsCOM_Sarissa_WinEnd
	dl $9BDED3,$9BE9DA,GFX_Sprite_VsCOM_Mangylox_Win,GFX_Sprite_VsCOM_Mangylox_WinEnd
	dl $9BE9DA,$9BF351,GFX_Sprite_VsCOM_Dedar_Win,GFX_Sprite_VsCOM_Dedar_WinEnd
	dl $9BF351,$9BFFA4,GFX_Sprite_VsCOM_Carlton_Win,GFX_Sprite_VsCOM_Carlton_WinEnd
	dl $9BFFA4,$9C8772,GFX_Sprite_VsCOM_HarryH_Win,GFX_Sprite_VsCOM_HarryH_WinEnd
	dl $9C8772,$9C90F5,GFX_Sprite_VsCOM_Wario_Win,GFX_Sprite_VsCOM_Wario_WinEnd
	dl $9C90F5,$9C98AC,GFX_Sprite_VsCOM_Toad_Defeat,GFX_Sprite_VsCOM_Toad_DefeatEnd
	dl $9C98AC,$9CA1B0,GFX_Sprite_VsCOM_Katsini_Defeat,GFX_Sprite_VsCOM_Katsini_DefeatEnd
	dl $9CA1B0,$9CAC31,GFX_Sprite_VsCOM_Galrog_Defeat,GFX_Sprite_VsCOM_Galrog_DefeatEnd
	dl $9CAC31,$9CB434,GFX_Sprite_VsCOM_HarleyQ_Defeat,GFX_Sprite_VsCOM_HarleyQ_DefeatEnd
	dl $9CB434,$9CBE63,GFX_Sprite_VsCOM_SamSpook_Defeat,GFX_Sprite_VsCOM_SamSpook_DefeatEnd
	dl $9CBE63,$9CC79D,GFX_Sprite_VsCOM_Sven_Defeat,GFX_Sprite_VsCOM_Sven_DefeatEnd
	dl $9CC79D,$9CD122,GFX_Sprite_VsCOM_Parrotor_Defeat,GFX_Sprite_VsCOM_Parrotor_DefeatEnd
	dl $9CD122,$9CD892,GFX_Sprite_VsCOM_MssrBoo_Defeat,GFX_Sprite_VsCOM_MssrBoo_DefeatEnd
	dl $9CD892,$9CE417,GFX_Sprite_VsCOM_Aqualea_Defeat,GFX_Sprite_VsCOM_Aqualea_DefeatEnd
	dl $9CE417,$9CEF85,GFX_Sprite_VsCOM_Razor_Defeat,GFX_Sprite_VsCOM_Razor_DefeatEnd
	dl $9CEF85,$9CFA1C,GFX_Sprite_VsCOM_TadRock_Defeat,GFX_Sprite_VsCOM_TadRock_DefeatEnd
	dl $9CFA1C,$9D8457,GFX_Sprite_VsCOM_Thak_Defeat,GFX_Sprite_VsCOM_Thak_DefeatEnd
	dl $9D8457,$9D8E45,GFX_Sprite_VsCOM_Lizardon_Defeat,GFX_Sprite_VsCOM_Lizardon_DefeatEnd
	dl $9D8E45,$9D967E,GFX_Sprite_VsCOM_Sarissa_Defeat,GFX_Sprite_VsCOM_Sarissa_DefeatEnd
	dl $9D967E,$9DA061,GFX_Sprite_VsCOM_Mangylox_Defeat,GFX_Sprite_VsCOM_Mangylox_DefeatEnd
	dl $9DA061,$9DA70A,GFX_Sprite_VsCOM_Dedar_Defeat,GFX_Sprite_VsCOM_Dedar_DefeatEnd
	dl $9DA70A,$9DAFBD,GFX_Sprite_VsCOM_Carlton_Defeat,GFX_Sprite_VsCOM_Carlton_DefeatEnd
	dl $9DAFBD,$9DB836,GFX_Sprite_VsCOM_HarryH_Defeat,GFX_Sprite_VsCOM_HarryH_DefeatEnd
	dl $9DB836,$9DC361,GFX_Sprite_VsCOM_Wario_Defeat,GFX_Sprite_VsCOM_Wario_DefeatEnd
	dl $9DC361,$9DDAEE,GFX_Sprites_TitleScreenLogo,GFX_Sprites_TitleScreenLogoEnd
	dl $9DDAEE,$9DE1E7,GFX_Sprites_RoundGameCutscene,GFX_Sprites_RoundGameCutsceneEnd
	dl $9DE1E7,$9E8483,GFX_Sprites_RoundGameEnding,GFX_Sprites_RoundGameEndingEnd
	dl $9E8483,$9EA52D,GFX_Sprites_VsCOM_EndScreen,GFX_Sprites_VsCOM_EndScreenEnd
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

UnknownDataPointersStart:
	dl $908000,$908153,DATA_908000,DATA_908000End
	dl $908153,$90832B,DATA_908153,DATA_908153End
	dl $90832B,$9083FE,DATA_90832B,DATA_90832BEnd
	dl $9083FE,$90879F,DATA_9083FE,DATA_9083FEEnd
	dl $90879F,$9089B3,DATA_90879F,DATA_90879FEnd
	dl $9089B3,$908C11,DATA_9089B3,DATA_9089B3End
	dl $908C11,$908FAC,DATA_908C11,DATA_908C11End
	dl $908FAC,$909227,DATA_908FAC,DATA_908FACEnd
	dl $909227,$9093F3,DATA_909227,DATA_909227End
	dl $9093F3,$90962C,DATA_9093F3,DATA_9093F3End
	dl $90962C,$909760,DATA_90962C,DATA_90962CEnd
	dl $909760,$9097F1,DATA_909760,DATA_909760End
	dl $9097F1,$909C09,DATA_9097F1,DATA_9097F1End
	dl $909C09,$90A231,DATA_909C09,DATA_909C09End
	dl $90A231,$90A488,DATA_90A231,DATA_90A231End
	dl $90A488,$90A8CB,DATA_90A488,DATA_90A488End
	dl $90A8CB,$90AD79,DATA_90A8CB,DATA_90A8CBEnd
	dl $90AD79,$90B0A1,DATA_90AD79,DATA_90AD79End
	dl $90B0A1,$90B1E9,DATA_90B0A1,DATA_90B0A1End
	dl $90B1E9,$90B24E,DATA_90B1E9,DATA_90B1E9End
	dl $90B24E,$90B51A,DATA_90B24E,DATA_90B24EEnd
	dl $90B51A,$90B7D9,DATA_90B51A,DATA_90B51AEnd
	dl $90B7D9,$90BA56,DATA_90B7D9,DATA_90B7D9End
	dl $90BA56,$90BAD9,DATA_90BA56,DATA_90BA56End
	dl $90BAD9,$90BE0E,DATA_90BAD9,DATA_90BAD9End
	dl $90BE0E,$90C147,DATA_90BE0E,DATA_90BE0EEnd
	dl $90C147,$90C4BC,DATA_90C147,DATA_90C147End
	dl $90C4BC,$90C78B,DATA_90C4BC,DATA_90C4BCEnd
	dl $90C78B,$90CAC1,DATA_90C78B,DATA_90C78BEnd
	dl $90CAC1,$90CDDF,DATA_90CAC1,DATA_90CAC1End
	dl $90CDDF,$90CFF4,DATA_90CDDF,DATA_90CDDFEnd
	dl $90CFF4,$90D307,DATA_90CFF4,DATA_90CFF4End
	dl $90D307,$90D3A7,DATA_90D307,DATA_90D307End
	dl $90D3A7,$90D49D,DATA_90D3A7,DATA_90D3A7End
	dl $90D49D,$90D523,DATA_90D49D,DATA_90D49DEnd
	dl $90D523,$90D6DC,DATA_90D523,DATA_90D523End
	dl $90D6DC,$90D93A,DATA_90D6DC,DATA_90D6DCEnd
	dl $90D93A,$90D9C0,DATA_90D93A,DATA_90D93AEnd
	dl $90D9C0,$90DC1B,DATA_90D9C0,DATA_90D9C0End
	dl $90DC1B,$90DD8B,DATA_90DC1B,DATA_90DC1BEnd
	dl $90DD8B,$90DE49,DATA_90DD8B,DATA_90DD8BEnd
	dl $90DE49,$90E046,DATA_90DE49,DATA_90DE49End
	dl $90E046,$90E23C,DATA_90E046,DATA_90E046End
	dl $90E23C,$90E273,DATA_90E23C,DATA_90E23CEnd
	dl $90E273,$90E528,DATA_90E273,DATA_90E273End
	dl $90E528,$90E5BC,DATA_90E528,DATA_90E528End
	dl $90E5BC,$90E650,DATA_90E5BC,DATA_90E5BCEnd
	dl $90E650,$90E80B,DATA_90E650,DATA_90E650End
	dl $90E80B,$90E99C,DATA_90E80B,DATA_90E80BEnd
	dl $90E99C,$90EE05,DATA_90E99C,DATA_90E99CEnd
	dl $90EE05,$90EFC3,DATA_90EE05,DATA_90EE05End
	dl $90EFC3,$90F432,DATA_90EFC3,DATA_90EFC3End
	dl $90F432,$90F8EB,DATA_90F432,DATA_90F432End
	dl $90F8EB,$90FD69,DATA_90F8EB,DATA_90F8EBEnd
	dl $90FD69,$91817C,DATA_90FD69,DATA_90FD69End
	dl $91817C,$9182A3,DATA_91817C,DATA_91817CEnd
	dl $9182A3,$9183EA,DATA_9182A3,DATA_9182A3End
	dl $9183EA,$9184F1,DATA_9183EA,DATA_9183EAEnd
	dl $9184F1,$9185C3,DATA_9184F1,DATA_9184F1End
	dl $9185C3,$9187E2,DATA_9185C3,DATA_9185C3End
	dl $9187E2,$91893F,DATA_9187E2,DATA_9187E2End
	dl $91893F,$918D44,DATA_91893F,DATA_91893FEnd
	dl $918D44,$91912A,DATA_918D44,DATA_918D44End
	dl $91912A,$9196B3,DATA_91912A,DATA_91912AEnd
	dl $9196B3,$919969,DATA_9196B3,DATA_9196B3End
	dl $919969,$919A82,DATA_919969,DATA_919969End
	dl $919A82,$919E15,DATA_919A82,DATA_919A82End
	dl $919E15,$919E85,DATA_919E15,DATA_919E15End
	dl $919E85,$91A013,DATA_919E85,DATA_919E85End
	dl $91A013,$91A0B4,DATA_91A013,DATA_91A013End
UnknownDataPointersEnd:

;--------------------------------------------------------------------

MusicPointersStart:
	dl $8B935E,$8B9ABF,DATA_8B935E,DATA_8B935EEnd
	dl $8B9ABF,$8B9CF6,DATA_8B9ABF,DATA_8B9ABFEnd
	dl $8B9CF6,$8B9F79,DATA_8B9CF6,DATA_8B9CF6End
	dl $8C91E9,$8C96DC,DATA_8C91E9,DATA_8C91E9End
	dl $8C96DC,$8C9928,DATA_8C96DC,DATA_8C96DCEnd
	dl $8C9928,$8CA28A,DATA_8C9928,DATA_8C9928End
	dl $8CA28A,$8CAA07,DATA_8CA28A,DATA_8CA28AEnd
	dl $8CAA07,$8CB7CC,DATA_8CAA07,DATA_8CAA07End
	dl $8CB7CC,$8CBD0C,DATA_8CB7CC,DATA_8CB7CCEnd
	dl $8CBD0C,$8CBF99,DATA_8CBD0C,DATA_8CBD0CEnd
	dl $8CBF99,$8CC0E8,DATA_8CBF99,DATA_8CBF99End
	dl $8CC0E8,$8CC231,DATA_8CC0E8,DATA_8CC0E8End
	dl $8CC231,$8CC35B,DATA_8CC231,DATA_8CC231End
	dl $8CC35B,$8CC588,DATA_8CC35B,DATA_8CC35BEnd
	dl $8CC588,$8CC6A1,DATA_8CC588,DATA_8CC588End
	dl $8CC6A1,$8CC81B,DATA_8CC6A1,DATA_8CC6A1End
	dl $8CC81B,$8CC8FF,DATA_8CC81B,DATA_8CC81BEnd
	dl $8CC8FF,$8CCA8E,DATA_8CC8FF,DATA_8CC8FFEnd
	dl $8CCA8E,$8CD0B8,DATA_8CCA8E,DATA_8CCA8EEnd
	dl $8CD0B8,$8CD21F,DATA_8CD0B8,DATA_8CD0B8End
	dl $8CD21F,$8CD815,DATA_8CD21F,DATA_8CD21FEnd
	dl $8CD815,$8CDB03,DATA_8CD815,DATA_8CD815End
	dl $8CDB03,$8CE332,DATA_8CDB03,DATA_8CDB03End
	dl $8CE332,$8CE596,DATA_8CE332,DATA_8CE332End
	dl $8CE596,$8CE702,DATA_8CE596,DATA_8CE596End
	dl $8CE702,$8CF0F7,DATA_8CE702,DATA_8CE702End
	dl $8CF0F7,$8CF4AD,DATA_8CF0F7,DATA_8CF0F7End
	dl $8CF4AD,$8CFA16,DATA_8CF4AD,DATA_8CF4ADEnd
	dl $8CFA16,$8D8000,DATA_8CFA16,DATA_8CFA16End
MusicPointersEnd:

;--------------------------------------------------------------------

GlobalBRRPointersStart:
	dl $8BA091,$8BB02D,GlobalBRR1F,GlobalBRR1FEnd
	dl $8BB03D,$8BB505,GlobalBRR20,GlobalBRR20End
	dl $8BB50D,$8BBFA2,GlobalBRR21,GlobalBRR21End
	dl $8BBFB2,$8BC2B8,GlobalBRR22,GlobalBRR22End
	dl $8D8008,$8D8803,GlobalBRR00,GlobalBRR00End
	dl $8D880B,$8D89FA,GlobalBRR01,GlobalBRR01End
	dl $8D8A0A,$8D8A49,GlobalBRR02,GlobalBRR02End
	dl $8D8A55,$8D941B,GlobalBRR03,GlobalBRR03End
	dl $8D9427,$8D9E35,GlobalBRR04,GlobalBRR04End
	dl $8D9E3D,$8DA179,GlobalBRR05,GlobalBRR05End
	dl $8DA181,$8DA60A,GlobalBRR06,GlobalBRR06End
	dl $8DA612,$8DA744,GlobalBRR07,GlobalBRR07End
	dl $8DA750,$8DA8F7,GlobalBRR08,GlobalBRR08End
	dl $8DA8FF,$8DAAF7,GlobalBRR09,GlobalBRR09End
	dl $8DAB03,$8DAB30,GlobalBRR0A,GlobalBRR0AEnd
	dl $8DAB38,$8DAB65,GlobalBRR0B,GlobalBRR0BEnd
	dl $8DAB6D,$8DAB9A,GlobalBRR0C,GlobalBRR0CEnd
	dl $8DABA2,$8DADBE,GlobalBRR0D,GlobalBRR0DEnd
	dl $8DADCE,$8DAF12,GlobalBRR0E,GlobalBRR0EEnd
	dl $8DAF1A,$8DBD60,GlobalBRR0F,GlobalBRR0FEnd
	dl $8DBD68,$8DBE76,GlobalBRR10,GlobalBRR10End
	dl $8DBE7E,$8DBEBD,GlobalBRR11,GlobalBRR11End
	dl $8DBEC9,$8DBF2C,GlobalBRR12,GlobalBRR12End
	dl $8DBF3C,$8DC91D,GlobalBRR13,GlobalBRR13End
	dl $8DC925,$8DC988,GlobalBRR14,GlobalBRR14End
	dl $8DC998,$8DD262,GlobalBRR15,GlobalBRR15End
	dl $8DD26A,$8DDAFE,GlobalBRR16,GlobalBRR16End
	dl $8DDB06,$8DDB69,GlobalBRR17,GlobalBRR17End
	dl $8DDB71,$8DDC9A,GlobalBRR18,GlobalBRR18End
	dl $8DDCAE,$8DDED3,GlobalBRR19,GlobalBRR19End
	dl $8DDEDF,$8DE746,GlobalBRR1A,GlobalBRR1AEnd
	dl $8DE752,$8DECAA,GlobalBRR1B,GlobalBRR1BEnd
	dl $8DECB6,$8DEE9C,GlobalBRR1C,GlobalBRR1CEnd
	dl $8DEEAC,$8DF161,GlobalBRR1D,GlobalBRR1DEnd
	dl $8DF16D,$8DF5AE,GlobalBRR1E,GlobalBRR1EEnd
GlobalBRRPointersEnd:

;--------------------------------------------------------------------

StreamedBRRPointersStart:
	dl $8BC2BC,$8BD160,StreamedBRR_Time,StreamedBRR_TimeEnd
	dl $8BD160,$8BE01F,StreamedBRR_Sweet,StreamedBRR_SweetEnd
	dl $8BE01F,$8BE7A9,StreamedBRR_Winner,StreamedBRR_WinnerEnd
	dl $8E8000,$8E8F8E,StreamedBRR_WhoWho,StreamedBRR_WhoWhoEnd
	dl $8E8F8E,$8EA408,StreamedBRR_Cool,StreamedBRR_CoolEnd
	dl $8EA408,$8EACBB,StreamedBRR_Heh,StreamedBRR_HehEnd
	dl $8EACBB,$8EBB7A,StreamedBRR_Yeah,StreamedBRR_YeahEnd
	dl $8EBB7A,$8ECC82,StreamedBRR_Groovy,StreamedBRR_GroovyEnd
	dl $8ECC82,$8EE22E,StreamedBRR_Score,StreamedBRR_ScoreEnd
	dl $8EE22E,$8EF7DA,StreamedBRR_Breakfast,StreamedBRR_BreakfastEnd
	dl $8F8000,$8F99C9,StreamedBRR_Yowza,StreamedBRR_YowzaEnd
	dl $8F99C9,$8FB407,StreamedBRR_Hello_GirlVoice,StreamedBRR_Hello_GirlVoiceEnd
	dl $8FB407,$8FBD65,StreamedBRR_Whoa_GirlVoice,StreamedBRR_Whoa_GirlVoiceEnd
	dl $8FBD65,$8FD404,StreamedBRR_Hello_BoyVoice,StreamedBRR_Hello_BoyVoiceEnd
	dl $8FD404,$8FE3E3,StreamedBRR_Whoa_BoyVoice,StreamedBRR_Whoa_BoyVoiceEnd
	dl $8FE3E3,$8FF72B,StreamedBRR_GetExtraLife,StreamedBRR_GetExtraLifeEnd
StreamedBRRPointersEnd:

;--------------------------------------------------------------------

GFX_9F8000:
	db "GFX_9F8000.bin"
GFX_9F8000End:

;--------------------------------------------------------------------

GFX_GlobalFGTiles:
	db "GFX_GlobalFGTiles.bin"
GFX_GlobalFGTilesEnd:
GFX_Layer2_RoundGame_GrasslandLevel:
	db "GFX_Layer2_RoundGame_GrasslandLevel.bin"
GFX_Layer2_RoundGame_GrasslandLevelEnd:
GFX_Layer3_RoundGame_GrasslandLevel:
	db "GFX_Layer3_RoundGame_GrasslandLevel.bin"
GFX_Layer3_RoundGame_GrasslandLevelEnd:
GFX_Layer2_RoundGame_MountainLevel:
	db "GFX_Layer2_RoundGame_MountainLevel.bin"
GFX_Layer2_RoundGame_MountainLevelEnd:
GFX_Layer3_RoundGame_MountainLevel:
	db "GFX_Layer3_RoundGame_MountainLevel.bin"
GFX_Layer3_RoundGame_MountainLevelEnd:
GFX_Layer2_RoundGame_IceLevel:
	db "GFX_Layer2_RoundGame_IceLevel.bin"
GFX_Layer2_RoundGame_IceLevelEnd:
GFX_Layer3_RoundGame_IceLevel:
	db "GFX_Layer3_RoundGame_IceLevel.bin"
GFX_Layer3_RoundGame_IceLevelEnd:
GFX_Layer2_RoundGame_ForestLevel:
	db "GFX_Layer2_RoundGame_ForestLevel.bin"
GFX_Layer2_RoundGame_ForestLevelEnd:
GFX_Layer3_RoundGame_ForestLevel:
	db "GFX_Layer3_RoundGame_ForestLevel.bin"
GFX_Layer3_RoundGame_ForestLevelEnd:
GFX_Layer2_RoundGame_CastleLevel:
	db "GFX_Layer2_RoundGame_CastleLevel.bin"
GFX_Layer2_RoundGame_CastleLevelEnd:
GFX_Layer3_RoundGame_CastleLevel:
	db "GFX_Layer3_RoundGame_CastleLevel.bin"
GFX_Layer3_RoundGame_CastleLevelEnd:
GFX_Layer2_VsCOM_ForestLevel:
	db "GFX_Layer2_VsCOM_ForestLevel.bin"
GFX_Layer2_VsCOM_ForestLevelEnd:
GFX_Layer2_VsCOM_CaveLevel:
	db "GFX_Layer2_VsCOM_CaveLevel.bin"
GFX_Layer2_VsCOM_CaveLevelEnd:
GFX_Layer3_VsCOM_CaveLevel:
	db "GFX_Layer3_VsCOM_CaveLevel.bin"
GFX_Layer3_VsCOM_CaveLevelEnd:
GFX_Layer2_VsCOM_GardenLevel:
	db "GFX_Layer2_VsCOM_GardenLevel.bin"
GFX_Layer2_VsCOM_GardenLevelEnd:
GFX_Layer2_VsCOM_MountainLevel:
	db "GFX_Layer2_VsCOM_MountainLevel.bin"
GFX_Layer2_VsCOM_MountainLevelEnd:
GFX_Layer2_VsCOM_CastleLevel:
	db "GFX_Layer2_VsCOM_CastleLevel.bin"
GFX_Layer2_VsCOM_CastleLevelEnd:
GFX_Layer3_VsCOM_CastleLevel:
	db "GFX_Layer3_VsCOM_CastleLevel.bin"
GFX_Layer3_VsCOM_CastleLevelEnd:
GFX_Layer2_TutorialLevel:
	db "GFX_Layer2_TutorialLevel.bin"
GFX_Layer2_TutorialLevelEnd:
GFX_TutorialLevel_AltButtonSettingTiles:
	db "GFX_TutorialLevel_AltButtonSettingTiles.bin"
GFX_TutorialLevel_AltButtonSettingTilesEnd:
GFX_BirdoSpeechBubbleTiles:
	db "GFX_BirdoSpeechBubbleTiles.bin"
GFX_BirdoSpeechBubbleTilesEnd:
GFX_TimeRaceMenuTiles:
	db "GFX_TimeRaceMenuTiles.bin"
GFX_TimeRaceMenuTilesEnd:
GFX_PlayerRecordsMenuTiles:
	db "GFX_PlayerRecordsMenuTiles.bin"
GFX_PlayerRecordsMenuTilesEnd:
GFX_AllTimeRecordsMenuTiles:
	db "GFX_AllTimeRecordsMenuTiles.bin"
GFX_AllTimeRecordsMenuTilesEnd:
GFX_RoundSelectMenuLeaves:
	db "GFX_RoundSelectMenuLeaves.bin"
GFX_RoundSelectMenuLeavesEnd:
GFX_Layer2_MainMenuBG1:
	db "GFX_Layer2_MainMenuBG1.bin"
GFX_Layer2_MainMenuBG1End:
GFX_Layer2_MainMenuBG2:
	db "GFX_Layer2_MainMenuBG2.bin"
GFX_Layer2_MainMenuBG2End:
GFX_Layer3_BirdoSpeechFont:
	db "GFX_Layer3_BirdoSpeechFont.bin"
GFX_Layer3_BirdoSpeechFontEnd:
GFX_Layer3_MediumFont:
	db "GFX_Layer3_MediumFont.bin"
GFX_Layer3_MediumFontEnd:
GFX_Layer3_LargeFontWithShadow:
	db "GFX_Layer3_LargeFontWithShadow.bin"
GFX_Layer3_LargeFontWithShadowEnd:
GFX_Layer3_DataConfirmScreenNumbers:
	db "GFX_Layer3_DataConfirmScreenNumbers.bin"
GFX_Layer3_DataConfirmScreenNumbersEnd:
GFX_Layer3_Numbers:
	db "GFX_Layer3_Numbers.bin"
GFX_Layer3_NumbersEnd:
GFX_Layer3_Vs2PSaveDataNumbers:
	db "GFX_Layer3_Vs2PSaveDataNumbers.bin"
GFX_Layer3_Vs2PSaveDataNumbersEnd:
GFX_Layer3_MenuBordersVSWinLoseXO:
	db "GFX_Layer3_MenuBordersVSWinLoseXO.bin"
GFX_Layer3_MenuBordersVSWinLoseXOEnd:
GFX_Layer3_VsCOM_WinLoseScreenFont:
	db "GFX_Layer3_VsCOM_WinLoseScreenFont.bin"
GFX_Layer3_VsCOM_WinLoseScreenFontEnd:
GFX_Layer3_LargeFont:
	db "GFX_Layer3_LargeFont.bin"
GFX_Layer3_LargeFontEnd:
GFX_Layer3_OptionsMenuFont:
	db "GFX_Layer3_OptionsMenuFont.bin"
GFX_Layer3_OptionsMenuFontEnd:
GFX_Layer3_SmallFont:
	db "GFX_Layer3_SmallFont.bin"
GFX_Layer3_SmallFontEnd:
GFX_Layer3_GameSelectMenuChoices:
	db "GFX_Layer3_GameSelectMenuChoices.bin"
GFX_Layer3_GameSelectMenuChoicesEnd:
GFX_Layer3_Vs2PLevelSelectMenu:
	db "GFX_Layer3_Vs2PLevelSelectMenu.bin"
GFX_Layer3_Vs2PLevelSelectMenuEnd:
GFX_Layer3_VsCOMMenuChoices:
	db "GFX_Layer3_VsCOMMenuChoices.bin"
GFX_Layer3_VsCOMMenuChoicesEnd:
GFX_Layer3_NameEntryMenuChoices:
	db "GFX_Layer3_NameEntryMenuChoices.bin"
GFX_Layer3_NameEntryMenuChoicesEnd:
GFX_Layer3_RoundGameMenuNumbers:
	db "GFX_Layer3_RoundGameMenuNumbers.bin"
GFX_Layer3_RoundGameMenuNumbersEnd:
GFX_Layer3_Data1234:
	db "GFX_Layer3_Data1234.bin"
GFX_Layer3_Data1234End:
GFX_Layer3_OptionsMenuChoices:
	db "GFX_Layer3_OptionsMenuChoices.bin"
GFX_Layer3_OptionsMenuChoicesEnd:
GFX_Layer3_LessonMenuChoices:
	db "GFX_Layer3_LessonMenuChoices.bin"
GFX_Layer3_LessonMenuChoicesEnd:
GFX_Layer3_VsCOM_TheEnd:
	db "GFX_Layer3_VsCOM_TheEnd.bin"
GFX_Layer3_VsCOM_TheEndEnd:
GFX_Layer1_VsCOM_SpeakBubbleFont:
	db "GFX_Layer1_VsCOM_SpeakBubbleFont.bin"
GFX_Layer1_VsCOM_SpeakBubbleFontEnd:
GFX_Layer2_VsCOM_ForestClearingCutsceneBG:
	db "GFX_Layer2_VsCOM_ForestClearingCutsceneBG.bin"
GFX_Layer2_VsCOM_ForestClearingCutsceneBGEnd:
GFX_Layer3_VsCOM_ForestClearingCutsceneBG:
	db "GFX_Layer3_VsCOM_ForestClearingCutsceneBG.bin"
GFX_Layer3_VsCOM_ForestClearingCutsceneBGEnd:
GFX_Layer3_VsCOM_CaveCutsceneBG:
	db "GFX_Layer3_VsCOM_CaveCutsceneBG.bin"
GFX_Layer3_VsCOM_CaveCutsceneBGEnd:
GFX_Layer3_VsCOM_GardenCutsceneBG:
	db "GFX_Layer3_VsCOM_GardenCutsceneBG.bin"
GFX_Layer3_VsCOM_GardenCutsceneBGEnd:
GFX_Layer3_VsCOM_MountainCutsceneBG:
	db "GFX_Layer3_VsCOM_MountainCutsceneBG.bin"
GFX_Layer3_VsCOM_MountainCutsceneBGEnd:
GFX_Layer2_VsCOM_CastleCutsceneBG:
	db "GFX_Layer2_VsCOM_CastleCutsceneBG.bin"
GFX_Layer2_VsCOM_CastleCutsceneBGEnd:
GFX_Layer3_VsCOM_CastleCutsceneBG:
	db "GFX_Layer3_VsCOM_CastleCutsceneBG.bin"
GFX_Layer3_VsCOM_CastleCutsceneBGEnd:
GFX_Layer1_TitleScreen:
	db "GFX_Layer1_TitleScreen.bin"
GFX_Layer1_TitleScreenEnd:
GFX_Layer2_TitleScreenWario:
	db "GFX_Layer2_TitleScreenWario.bin"
GFX_Layer2_TitleScreenWarioEnd:
GFX_Layer3_TitleScreenClouds:
	db "GFX_Layer3_TitleScreenClouds.bin"
GFX_Layer3_TitleScreenCloudsEnd:
GFX_Layer3_PlayerRecords:
	db "GFX_Layer3_PlayerRecords.bin"
GFX_Layer3_PlayerRecordsEnd:
GFX_Layer3_AllTimeRecords:
	db "GFX_Layer3_AllTimeRecords.bin"
GFX_Layer3_AllTimeRecordsEnd:
GFX_Layer1_RecordScreen3:
	db "GFX_Layer1_RecordScreen3.bin"
GFX_Layer1_RecordScreen3End:
GFX_Layer2_RecordScreen3:
	db "GFX_Layer2_RecordScreen3.bin"
GFX_Layer2_RecordScreen3End:
GFX_Layer3_RecordScreen3Rankings:
	db "GFX_Layer3_RecordScreen3Rankings.bin"
GFX_Layer3_RecordScreen3RankingsEnd:
GFX_Layer3_RecordScreen3Letters:
	db "GFX_Layer3_RecordScreen3Letters.bin"
GFX_Layer3_RecordScreen3LettersEnd:
GFX_Layer1_RoundGameCutscene:
	db "GFX_Layer1_RoundGameCutscene.bin"
GFX_Layer1_RoundGameCutsceneEnd:
GFX_Layer2_RoundGameCutscene:
	db "GFX_Layer2_RoundGameCutscene.bin"
GFX_Layer2_RoundGameCutsceneEnd:
GFX_RoundGameEnding_BG:
	db "GFX_RoundGameEnding_BG.bin"
GFX_RoundGameEnding_BGEnd:
GFX_RoundGameEnding_WariosCastle:
	db "GFX_RoundGameEnding_WariosCastle.bin"
GFX_RoundGameEnding_WariosCastleEnd:
GFX_VsCOM_Credits_BlackBorder:
	db "GFX_VsCOM_Credits_BlackBorder.bin"
GFX_VsCOM_Credits_BlackBorderEnd:
GFX_VsCOM_EndingNintendoLogo:
	db "GFX_VsCOM_EndingNintendoLogo.bin"
GFX_VsCOM_EndingNintendoLogoEnd:
GFX_Sprite_Global:
	db "GFX_Sprite_Global.bin"
GFX_Sprite_GlobalEnd:
GFX_Sprite_RoundGameBirdo:
	db "GFX_Sprite_RoundGameBirdo.bin"
GFX_Sprite_RoundGameBirdoEnd:
GFX_Sprite_RoundGameWario:
	db "GFX_Sprite_RoundGameWario.bin"
GFX_Sprite_RoundGameWarioEnd:
GFX_Sprite_2PToad:
	db "GFX_Sprite_2PToad.bin"
GFX_Sprite_2PToadEnd:
GFX_Sprite_Menus_Birdo:
	db "GFX_Sprite_Menus_Birdo.bin"
GFX_Sprite_Menus_BirdoEnd:
GFX_Sprite_GameSelectIcons:
	db "GFX_Sprite_GameSelectIcons.bin"
GFX_Sprite_GameSelectIconsEnd:
GFX_Sprite_VsCOM_DifficultyMenuOpponents:
	db "GFX_Sprite_VsCOM_DifficultyMenuOpponents.bin"
GFX_Sprite_VsCOM_DifficultyMenuOpponentsEnd:
GFX_Sprite_Vs2P_LevelSelectWindows:
	db "GFX_Sprite_Vs2P_LevelSelectWindows.bin"
GFX_Sprite_Vs2P_LevelSelectWindowsEnd:
GFX_Sprite_Options_ButtonSelectWindows:
	db "GFX_Sprite_Options_ButtonSelectWindows.bin"
GFX_Sprite_Options_ButtonSelectWindowsEnd:
GFX_Sprite_RoundGameMenu_Numbers:
	db "GFX_Sprite_RoundGameMenu_Numbers.bin"
GFX_Sprite_RoundGameMenu_NumbersEnd:
GFX_Sprite_VsCOM_Toad_Main:
	db "GFX_Sprite_VsCOM_Toad_Main.bin"
GFX_Sprite_VsCOM_Toad_MainEnd:
GFX_Sprite_VsCOM_Katsini_Main:
	db "GFX_Sprite_VsCOM_Katsini_Main.bin"
GFX_Sprite_VsCOM_Katsini_MainEnd:
GFX_Sprite_VsCOM_Galrog_Main:
	db "GFX_Sprite_VsCOM_Galrog_Main.bin"
GFX_Sprite_VsCOM_Galrog_MainEnd:
GFX_Sprite_VsCOM_HarleyQ_Main:
	db "GFX_Sprite_VsCOM_HarleyQ_Main.bin"
GFX_Sprite_VsCOM_HarleyQ_MainEnd:
GFX_Sprite_VsCOM_SamSpook_Main:
	db "GFX_Sprite_VsCOM_SamSpook_Main.bin"
GFX_Sprite_VsCOM_SamSpook_MainEnd:
GFX_Sprite_VsCOM_Sven_Main:
	db "GFX_Sprite_VsCOM_Sven_Main.bin"
GFX_Sprite_VsCOM_Sven_MainEnd:
GFX_Sprite_VsCOM_Parrotor_Main:
	db "GFX_Sprite_VsCOM_Parrotor_Main.bin"
GFX_Sprite_VsCOM_Parrotor_MainEnd:
GFX_Sprite_VsCOM_MssrBoo_Main:
	db "GFX_Sprite_VsCOM_MssrBoo_Main.bin"
GFX_Sprite_VsCOM_MssrBoo_MainEnd:
GFX_Sprite_VsCOM_Aqualea_Main:
	db "GFX_Sprite_VsCOM_Aqualea_Main.bin"
GFX_Sprite_VsCOM_Aqualea_MainEnd:
GFX_Sprite_VsCOM_Razor_Main:
	db "GFX_Sprite_VsCOM_Razor_Main.bin"
GFX_Sprite_VsCOM_Razor_MainEnd:
GFX_Sprite_VsCOM_TadRock_Main:
	db "GFX_Sprite_VsCOM_TadRock_Main.bin"
GFX_Sprite_VsCOM_TadRock_MainEnd:
GFX_Sprite_VsCOM_Thak_Main:
	db "GFX_Sprite_VsCOM_Thak_Main.bin"
GFX_Sprite_VsCOM_Thak_MainEnd:
GFX_Sprite_VsCOM_Lizardon_Main:
	db "GFX_Sprite_VsCOM_Lizardon_Main.bin"
GFX_Sprite_VsCOM_Lizardon_MainEnd:
GFX_Sprite_VsCOM_Sarissa_Main:
	db "GFX_Sprite_VsCOM_Sarissa_Main.bin"
GFX_Sprite_VsCOM_Sarissa_MainEnd:
GFX_Sprite_VsCOM_Mangylox_Main:
	db "GFX_Sprite_VsCOM_Mangylox_Main.bin"
GFX_Sprite_VsCOM_Mangylox_MainEnd:
GFX_Sprite_VsCOM_Dedar_Main:
	db "GFX_Sprite_VsCOM_Dedar_Main.bin"
GFX_Sprite_VsCOM_Dedar_MainEnd:
GFX_Sprite_VsCOM_Carlton_Main:
	db "GFX_Sprite_VsCOM_Carlton_Main.bin"
GFX_Sprite_VsCOM_Carlton_MainEnd:
GFX_Sprite_VsCOM_HarryH_Main:
	db "GFX_Sprite_VsCOM_HarryH_Main.bin"
GFX_Sprite_VsCOM_HarryH_MainEnd:
GFX_Sprite_VsCOM_Wario_Main:
	db "GFX_Sprite_VsCOM_Wario_Main.bin"
GFX_Sprite_VsCOM_Wario_MainEnd:
GFX_Sprite_VsCOM_Toad_Win:
	db "GFX_Sprite_VsCOM_Toad_Win.bin"
GFX_Sprite_VsCOM_Toad_WinEnd:
GFX_Sprite_VsCOM_Katsini_Win:
	db "GFX_Sprite_VsCOM_Katsini_Win.bin"
GFX_Sprite_VsCOM_Katsini_WinEnd:
GFX_Sprite_VsCOM_Galrog_Win:
	db "GFX_Sprite_VsCOM_Galrog_Win.bin"
GFX_Sprite_VsCOM_Galrog_WinEnd:
GFX_Sprite_VsCOM_HarleyQ_Win:
	db "GFX_Sprite_VsCOM_HarleyQ_Win.bin"
GFX_Sprite_VsCOM_HarleyQ_WinEnd:
GFX_Sprite_VsCOM_SamSpook_Win:
	db "GFX_Sprite_VsCOM_SamSpook_Win.bin"
GFX_Sprite_VsCOM_SamSpook_WinEnd:
GFX_Sprite_VsCOM_Sven_Win:
	db "GFX_Sprite_VsCOM_Sven_Win.bin"
GFX_Sprite_VsCOM_Sven_WinEnd:
GFX_Sprite_VsCOM_Parrotor_Win:
	db "GFX_Sprite_VsCOM_Parrotor_Win.bin"
GFX_Sprite_VsCOM_Parrotor_WinEnd:
GFX_Sprite_VsCOM_MssrBoo_Win:
	db "GFX_Sprite_VsCOM_MssrBoo_Win.bin"
GFX_Sprite_VsCOM_MssrBoo_WinEnd:
GFX_Sprite_VsCOM_Aqualea_Win:
	db "GFX_Sprite_VsCOM_Aqualea_Win.bin"
GFX_Sprite_VsCOM_Aqualea_WinEnd:
GFX_Sprite_VsCOM_Razor_Win:
	db "GFX_Sprite_VsCOM_Razor_Win.bin"
GFX_Sprite_VsCOM_Razor_WinEnd:
GFX_Sprite_VsCOM_TadRock_Win:
	db "GFX_Sprite_VsCOM_TadRock_Win.bin"
GFX_Sprite_VsCOM_TadRock_WinEnd:
GFX_Sprite_VsCOM_Thak_Win:
	db "GFX_Sprite_VsCOM_Thak_Win.bin"
GFX_Sprite_VsCOM_Thak_WinEnd:
GFX_Sprite_VsCOM_Lizardon_Win:
	db "GFX_Sprite_VsCOM_Lizardon_Win.bin"
GFX_Sprite_VsCOM_Lizardon_WinEnd:
GFX_Sprite_VsCOM_Sarissa_Win:
	db "GFX_Sprite_VsCOM_Sarissa_Win.bin"
GFX_Sprite_VsCOM_Sarissa_WinEnd:
GFX_Sprite_VsCOM_Mangylox_Win:
	db "GFX_Sprite_VsCOM_Mangylox_Win.bin"
GFX_Sprite_VsCOM_Mangylox_WinEnd:
GFX_Sprite_VsCOM_Dedar_Win:
	db "GFX_Sprite_VsCOM_Dedar_Win.bin"
GFX_Sprite_VsCOM_Dedar_WinEnd:
GFX_Sprite_VsCOM_Carlton_Win:
	db "GFX_Sprite_VsCOM_Carlton_Win.bin"
GFX_Sprite_VsCOM_Carlton_WinEnd:
GFX_Sprite_VsCOM_HarryH_Win:
	db "GFX_Sprite_VsCOM_HarryH_Win.bin"
GFX_Sprite_VsCOM_HarryH_WinEnd:
GFX_Sprite_VsCOM_Wario_Win:
	db "GFX_Sprite_VsCOM_Wario_Win.bin"
GFX_Sprite_VsCOM_Wario_WinEnd:
GFX_Sprite_VsCOM_Toad_Defeat:
	db "GFX_Sprite_VsCOM_Toad_Defeat.bin"
GFX_Sprite_VsCOM_Toad_DefeatEnd:
GFX_Sprite_VsCOM_Katsini_Defeat:
	db "GFX_Sprite_VsCOM_Katsini_Defeat.bin"
GFX_Sprite_VsCOM_Katsini_DefeatEnd:
GFX_Sprite_VsCOM_Galrog_Defeat:
	db "GFX_Sprite_VsCOM_Galrog_Defeat.bin"
GFX_Sprite_VsCOM_Galrog_DefeatEnd:
GFX_Sprite_VsCOM_HarleyQ_Defeat:
	db "GFX_Sprite_VsCOM_HarleyQ_Defeat.bin"
GFX_Sprite_VsCOM_HarleyQ_DefeatEnd:
GFX_Sprite_VsCOM_SamSpook_Defeat:
	db "GFX_Sprite_VsCOM_SamSpook_Defeat.bin"
GFX_Sprite_VsCOM_SamSpook_DefeatEnd:
GFX_Sprite_VsCOM_Sven_Defeat:
	db "GFX_Sprite_VsCOM_Sven_Defeat.bin"
GFX_Sprite_VsCOM_Sven_DefeatEnd:
GFX_Sprite_VsCOM_Parrotor_Defeat:
	db "GFX_Sprite_VsCOM_Parrotor_Defeat.bin"
GFX_Sprite_VsCOM_Parrotor_DefeatEnd:
GFX_Sprite_VsCOM_MssrBoo_Defeat:
	db "GFX_Sprite_VsCOM_MssrBoo_Defeat.bin"
GFX_Sprite_VsCOM_MssrBoo_DefeatEnd:
GFX_Sprite_VsCOM_Aqualea_Defeat:
	db "GFX_Sprite_VsCOM_Aqualea_Defeat.bin"
GFX_Sprite_VsCOM_Aqualea_DefeatEnd:
GFX_Sprite_VsCOM_Razor_Defeat:
	db "GFX_Sprite_VsCOM_Razor_Defeat.bin"
GFX_Sprite_VsCOM_Razor_DefeatEnd:
GFX_Sprite_VsCOM_TadRock_Defeat:
	db "GFX_Sprite_VsCOM_TadRock_Defeat.bin"
GFX_Sprite_VsCOM_TadRock_DefeatEnd:
GFX_Sprite_VsCOM_Thak_Defeat:
	db "GFX_Sprite_VsCOM_Thak_Defeat.bin"
GFX_Sprite_VsCOM_Thak_DefeatEnd:
GFX_Sprite_VsCOM_Lizardon_Defeat:
	db "GFX_Sprite_VsCOM_Lizardon_Defeat.bin"
GFX_Sprite_VsCOM_Lizardon_DefeatEnd:
GFX_Sprite_VsCOM_Sarissa_Defeat:
	db "GFX_Sprite_VsCOM_Sarissa_Defeat.bin"
GFX_Sprite_VsCOM_Sarissa_DefeatEnd:
GFX_Sprite_VsCOM_Mangylox_Defeat:
	db "GFX_Sprite_VsCOM_Mangylox_Defeat.bin"
GFX_Sprite_VsCOM_Mangylox_DefeatEnd:
GFX_Sprite_VsCOM_Dedar_Defeat:
	db "GFX_Sprite_VsCOM_Dedar_Defeat.bin"
GFX_Sprite_VsCOM_Dedar_DefeatEnd:
GFX_Sprite_VsCOM_Carlton_Defeat:
	db "GFX_Sprite_VsCOM_Carlton_Defeat.bin"
GFX_Sprite_VsCOM_Carlton_DefeatEnd:
GFX_Sprite_VsCOM_HarryH_Defeat:
	db "GFX_Sprite_VsCOM_HarryH_Defeat.bin"
GFX_Sprite_VsCOM_HarryH_DefeatEnd:
GFX_Sprite_VsCOM_Wario_Defeat:
	db "GFX_Sprite_VsCOM_Wario_Defeat.bin"
GFX_Sprite_VsCOM_Wario_DefeatEnd:
GFX_Sprites_TitleScreenLogo:
	db "GFX_Sprites_TitleScreenLogo.bin"
GFX_Sprites_TitleScreenLogoEnd:
GFX_Sprites_RoundGameCutscene:
	db "GFX_Sprites_RoundGameCutscene.bin"
GFX_Sprites_RoundGameCutsceneEnd:
GFX_Sprites_RoundGameEnding:
	db "GFX_Sprites_RoundGameEnding.bin"
GFX_Sprites_RoundGameEndingEnd:
GFX_Sprites_VsCOM_EndScreen:
	db "GFX_Sprites_VsCOM_EndScreen.bin"
GFX_Sprites_VsCOM_EndScreenEnd:

;--------------------------------------------------------------------

DATA_908000:
	db "DATA_908000.bin"
DATA_908000End:
DATA_908153:
	db "DATA_908153.bin"
DATA_908153End:
DATA_90832B:
	db "DATA_90832B.bin"
DATA_90832BEnd:
DATA_9083FE:
	db "DATA_9083FE.bin"
DATA_9083FEEnd:
DATA_90879F:
	db "DATA_90879F.bin"
DATA_90879FEnd:
DATA_9089B3:
	db "DATA_9089B3.bin"
DATA_9089B3End:
DATA_908C11:
	db "DATA_908C11.bin"
DATA_908C11End:
DATA_908FAC:
	db "DATA_908FAC.bin"
DATA_908FACEnd:
DATA_909227:
	db "DATA_909227.bin"
DATA_909227End:
DATA_9093F3:
	db "DATA_9093F3.bin"
DATA_9093F3End:
DATA_90962C:
	db "DATA_90962C.bin"
DATA_90962CEnd:
DATA_909760:
	db "DATA_909760.bin"
DATA_909760End:
DATA_9097F1:
	db "DATA_9097F1.bin"
DATA_9097F1End:
DATA_909C09:
	db "DATA_909C09.bin"
DATA_909C09End:
DATA_90A231:
	db "DATA_90A231.bin"
DATA_90A231End:
DATA_90A488:
	db "DATA_90A488.bin"
DATA_90A488End:
DATA_90A8CB:
	db "DATA_90A8CB.bin"
DATA_90A8CBEnd:
DATA_90AD79:
	db "DATA_90AD79.bin"
DATA_90AD79End:
DATA_90B0A1:
	db "DATA_90B0A1.bin"
DATA_90B0A1End:
DATA_90B1E9:
	db "DATA_90B1E9.bin"
DATA_90B1E9End:
DATA_90B24E:
	db "DATA_90B24E.bin"
DATA_90B24EEnd:
DATA_90B51A:
	db "DATA_90B51A.bin"
DATA_90B51AEnd:
DATA_90B7D9:
	db "DATA_90B7D9.bin"
DATA_90B7D9End:
DATA_90BA56:
	db "DATA_90BA56.bin"
DATA_90BA56End:
DATA_90BAD9:
	db "DATA_90BAD9.bin"
DATA_90BAD9End:
DATA_90BE0E:
	db "DATA_90BE0E.bin"
DATA_90BE0EEnd:
DATA_90C147:
	db "DATA_90C147.bin"
DATA_90C147End:
DATA_90C4BC:
	db "DATA_90C4BC.bin"
DATA_90C4BCEnd:
DATA_90C78B:
	db "DATA_90C78B.bin"
DATA_90C78BEnd:
DATA_90CAC1:
	db "DATA_90CAC1.bin"
DATA_90CAC1End:
DATA_90CDDF:
	db "DATA_90CDDF.bin"
DATA_90CDDFEnd:
DATA_90CFF4:
	db "DATA_90CFF4.bin"
DATA_90CFF4End:
DATA_90D307:
	db "DATA_90D307.bin"
DATA_90D307End:
DATA_90D3A7:
	db "DATA_90D3A7.bin"
DATA_90D3A7End:
DATA_90D49D:
	db "DATA_90D49D.bin"
DATA_90D49DEnd:
DATA_90D523:
	db "DATA_90D523.bin"
DATA_90D523End:
DATA_90D6DC:
	db "DATA_90D6DC.bin"
DATA_90D6DCEnd:
DATA_90D93A:
	db "DATA_90D93A.bin"
DATA_90D93AEnd:
DATA_90D9C0:
	db "DATA_90D9C0.bin"
DATA_90D9C0End:
DATA_90DC1B:
	db "DATA_90DC1B.bin"
DATA_90DC1BEnd:
DATA_90DD8B:
	db "DATA_90DD8B.bin"
DATA_90DD8BEnd:
DATA_90DE49:
	db "DATA_90DE49.bin"
DATA_90DE49End:
DATA_90E046:
	db "DATA_90E046.bin"
DATA_90E046End:
DATA_90E23C:
	db "DATA_90E23C.bin"
DATA_90E23CEnd:
DATA_90E273:
	db "DATA_90E273.bin"
DATA_90E273End:
DATA_90E528:
	db "DATA_90E528.bin"
DATA_90E528End:
DATA_90E5BC:
	db "DATA_90E5BC.bin"
DATA_90E5BCEnd:
DATA_90E650:
	db "DATA_90E650.bin"
DATA_90E650End:
DATA_90E80B:
	db "DATA_90E80B.bin"
DATA_90E80BEnd:
DATA_90E99C:
	db "DATA_90E99C.bin"
DATA_90E99CEnd:
DATA_90EE05:
	db "DATA_90EE05.bin"
DATA_90EE05End:
DATA_90EFC3:
	db "DATA_90EFC3.bin"
DATA_90EFC3End:
DATA_90F432:
	db "DATA_90F432.bin"
DATA_90F432End:
DATA_90F8EB:
	db "DATA_90F8EB.bin"
DATA_90F8EBEnd:
DATA_90FD69:
	db "DATA_90FD69.bin"
DATA_90FD69End:
DATA_91817C:
	db "DATA_91817C.bin"
DATA_91817CEnd:
DATA_9182A3:
	db "DATA_9182A3.bin"
DATA_9182A3End:
DATA_9183EA:
	db "DATA_9183EA.bin"
DATA_9183EAEnd:
DATA_9184F1:
	db "DATA_9184F1.bin"
DATA_9184F1End:
DATA_9185C3:
	db "DATA_9185C3.bin"
DATA_9185C3End:
DATA_9187E2:
	db "DATA_9187E2.bin"
DATA_9187E2End:
DATA_91893F:
	db "DATA_91893F.bin"
DATA_91893FEnd:
DATA_918D44:
	db "DATA_918D44.bin"
DATA_918D44End:
DATA_91912A:
	db "DATA_91912A.bin"
DATA_91912AEnd:
DATA_9196B3:
	db "DATA_9196B3.bin"
DATA_9196B3End:
DATA_919969:
	db "DATA_919969.bin"
DATA_919969End:
DATA_919A82:
	db "DATA_919A82.bin"
DATA_919A82End:
DATA_919E15:
	db "DATA_919E15.bin"
DATA_919E15End:
DATA_919E85:
	db "DATA_919E85.bin"
DATA_919E85End:
DATA_91A013:
	db "DATA_91A013.bin"
DATA_91A013End:

;--------------------------------------------------------------------

DATA_8B935E:
	db "DATA_8B935E.bin"
DATA_8B935EEnd:
DATA_8B9ABF:
	db "DATA_8B9ABF.bin"
DATA_8B9ABFEnd:
DATA_8B9CF6:
	db "DATA_8B9CF6.bin"
DATA_8B9CF6End:
DATA_8C91E9:
	db "DATA_8C91E9.bin"
DATA_8C91E9End:
DATA_8C96DC:
	db "DATA_8C96DC.bin"
DATA_8C96DCEnd:
DATA_8C9928:
	db "DATA_8C9928.bin"
DATA_8C9928End:
DATA_8CA28A:
	db "DATA_8CA28A.bin"
DATA_8CA28AEnd:
DATA_8CAA07:
	db "DATA_8CAA07.bin"
DATA_8CAA07End:
DATA_8CB7CC:
	db "DATA_8CB7CC.bin"
DATA_8CB7CCEnd:
DATA_8CBD0C:
	db "DATA_8CBD0C.bin"
DATA_8CBD0CEnd:
DATA_8CBF99:
	db "DATA_8CBF99.bin"
DATA_8CBF99End:
DATA_8CC0E8:
	db "DATA_8CC0E8.bin"
DATA_8CC0E8End:
DATA_8CC231:
	db "DATA_8CC231.bin"
DATA_8CC231End:
DATA_8CC35B:
	db "DATA_8CC35B.bin"
DATA_8CC35BEnd:
DATA_8CC588:
	db "DATA_8CC588.bin"
DATA_8CC588End:
DATA_8CC6A1:
	db "DATA_8CC6A1.bin"
DATA_8CC6A1End:
DATA_8CC81B:
	db "DATA_8CC81B.bin"
DATA_8CC81BEnd:
DATA_8CC8FF:
	db "DATA_8CC8FF.bin"
DATA_8CC8FFEnd:
DATA_8CCA8E:
	db "DATA_8CCA8E.bin"
DATA_8CCA8EEnd:
DATA_8CD0B8:
	db "DATA_8CD0B8.bin"
DATA_8CD0B8End:
DATA_8CD21F:
	db "DATA_8CD21F.bin"
DATA_8CD21FEnd:
DATA_8CD815:
	db "DATA_8CD815.bin"
DATA_8CD815End:
DATA_8CDB03:
	db "DATA_8CDB03.bin"
DATA_8CDB03End:
DATA_8CE332:
	db "DATA_8CE332.bin"
DATA_8CE332End:
DATA_8CE596:
	db "DATA_8CE596.bin"
DATA_8CE596End:
DATA_8CE702:
	db "DATA_8CE702.bin"
DATA_8CE702End:
DATA_8CF0F7:
	db "DATA_8CF0F7.bin"
DATA_8CF0F7End:
DATA_8CF4AD:
	db "DATA_8CF4AD.bin"
DATA_8CF4ADEnd:
DATA_8CFA16:
	db "DATA_8CFA16.bin"
DATA_8CFA16End:

;--------------------------------------------------------------------

GlobalBRR1F:
	db "1F.brr"
GlobalBRR1FEnd:
GlobalBRR20:
	db "20.brr"
GlobalBRR20End:
GlobalBRR21:
	db "21.brr"
GlobalBRR21End:
GlobalBRR22:
	db "22.brr"
GlobalBRR22End:
GlobalBRR00:
	db "00.brr"
GlobalBRR00End:
GlobalBRR01:
	db "01.brr"
GlobalBRR01End:
GlobalBRR02:
	db "02.brr"
GlobalBRR02End:
GlobalBRR03:
	db "03.brr"
GlobalBRR03End:
GlobalBRR04:
	db "04.brr"
GlobalBRR04End:
GlobalBRR05:
	db "05.brr"
GlobalBRR05End:
GlobalBRR06:
	db "06.brr"
GlobalBRR06End:
GlobalBRR07:
	db "07.brr"
GlobalBRR07End:
GlobalBRR08:
	db "08.brr"
GlobalBRR08End:
GlobalBRR09:
	db "09.brr"
GlobalBRR09End:
GlobalBRR0A:
	db "0A.brr"
GlobalBRR0AEnd:
GlobalBRR0B:
	db "0B.brr"
GlobalBRR0BEnd:
GlobalBRR0C:
	db "0C.brr"
GlobalBRR0CEnd:
GlobalBRR0D:
	db "0D.brr"
GlobalBRR0DEnd:
GlobalBRR0E:
	db "0E.brr"
GlobalBRR0EEnd:
GlobalBRR0F:
	db "0F.brr"
GlobalBRR0FEnd:
GlobalBRR10:
	db "10.brr"
GlobalBRR10End:
GlobalBRR11:
	db "11.brr"
GlobalBRR11End:
GlobalBRR12:
	db "12.brr"
GlobalBRR12End:
GlobalBRR13:
	db "13.brr"
GlobalBRR13End:
GlobalBRR14:
	db "14.brr"
GlobalBRR14End:
GlobalBRR15:
	db "15.brr"
GlobalBRR15End:
GlobalBRR16:
	db "16.brr"
GlobalBRR16End:
GlobalBRR17:
	db "17.brr"
GlobalBRR17End:
GlobalBRR18:
	db "18.brr"
GlobalBRR18End:
GlobalBRR19:
	db "19.brr"
GlobalBRR19End:
GlobalBRR1A:
	db "1A.brr"
GlobalBRR1AEnd:
GlobalBRR1B:
	db "1B.brr"
GlobalBRR1BEnd:
GlobalBRR1C:
	db "1C.brr"
GlobalBRR1CEnd:
GlobalBRR1D:
	db "1D.brr"
GlobalBRR1DEnd:
GlobalBRR1E:
	db "1E.brr"
GlobalBRR1EEnd:

;--------------------------------------------------------------------

StreamedBRR_Time:
	db "Time.brr"
StreamedBRR_TimeEnd:
StreamedBRR_Sweet:
	db "Sweet.brr"
StreamedBRR_SweetEnd:
StreamedBRR_Winner:
	db "Winner.brr"
StreamedBRR_WinnerEnd:
StreamedBRR_WhoWho:
	db "WhoWho.brr"
StreamedBRR_WhoWhoEnd:
StreamedBRR_Cool:
	db "Cool.brr"
StreamedBRR_CoolEnd:
StreamedBRR_Heh:
	db "Heh.brr"
StreamedBRR_HehEnd:
StreamedBRR_Yeah:
	db "Yeah.brr"
StreamedBRR_YeahEnd:
StreamedBRR_Groovy:
	db "Groovy.brr"
StreamedBRR_GroovyEnd:
StreamedBRR_Score:
	db "Score.brr"
StreamedBRR_ScoreEnd:
StreamedBRR_Breakfast:
	db "Breakfast.brr"
StreamedBRR_BreakfastEnd:
StreamedBRR_Yowza:
	db "Yowza.brr"
StreamedBRR_YowzaEnd:
StreamedBRR_Hello_GirlVoice:
	db "Hello_GirlVoice.brr"
StreamedBRR_Hello_GirlVoiceEnd:
StreamedBRR_Whoa_GirlVoice:
	db "Whoa_GirlVoice.brr"
StreamedBRR_Whoa_GirlVoiceEnd:
StreamedBRR_Hello_BoyVoice:
	db "Hello_BoyVoice.brr"
StreamedBRR_Hello_BoyVoiceEnd:
StreamedBRR_Whoa_BoyVoice:
	db "Whoa_BoyVoice.brr"
StreamedBRR_Whoa_BoyVoiceEnd:
StreamedBRR_GetExtraLife:
	db "GetExtraLife.brr"
StreamedBRR_GetExtraLifeEnd:

;--------------------------------------------------------------------
