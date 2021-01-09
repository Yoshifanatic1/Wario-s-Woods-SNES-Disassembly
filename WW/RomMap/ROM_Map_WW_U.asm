
macro WW_GameSpecificAssemblySettings()
	!ROM_WW_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_WW_E = $0002							;|
	!ROM_WW_J = $0004							;/

	%SetROMToAssembleForHack(WW_U, !ROMID)
endmacro

macro WW_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_WW.asm
	incsrc ../RAM_Map_WW.asm
	incsrc ../Routine_Macros_WW.asm
	incsrc ../SNES_Macros_WW.asm
endmacro

macro WW_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_WW.asm
	incsrc ../Misc_Defines_WW.asm
	incsrc ../SPC700/SPC700_Macros_WW.asm
endmacro

macro WW_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro WW_LoadGameSpecificMSU1Files()
endmacro

macro WW_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Nintendo"
	!Define_Global_DeveloperName = "Nintendo R&D1"
	!Define_Global_ReleaseDate = "December 10, 1994"
	!Define_Global_BaseROMMD5Hash = "f5c1bd28f88529473ab205b3f364def8"

	!Define_Global_MakerCode = "01"
	!Define_Global_GameCode = "65  "
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "WARIO'S WOODS        "
	!Define_Global_ROMLayout = !ROMLayout_LoROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM_RAM_SRAM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize = !ROMSize_1MB
	!Define_Global_SRAMSize = !SRAMSize_8KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $4246
	!UnusedNativeModeVector1 = $FFFF
	!UnusedNativeModeVector2 = $FFFF
	!NativeModeCOPVector = CODE_808F4C
	!NativeModeBRKVector = CODE_808F4D
	!NativeModeAbortVector = $FFFF
	!NativeModeNMIVector = CODE_808F88
	!NativeModeResetVector = $FFFF
	!NativeModeIRQVector = CODE_808F50
	!UnusedEmulationModeVector1 = $FFFF
	!UnusedEmulationModeVector2 = $FFFF
	!EmulationModeCOPVector = $FFFF
	!EmulationModeBRKVector = $FFFF
	!EmulationModeAbortVector = $FFFF
	!EmulationModeNMIVector = $FFFF
	!EmulationModeResetVector = CODE_808E30
	!EmulationModeIRQVector = $FFFF
	%LoadExtraRAMFile("SRAM_Map_WW.asm")
endmacro

macro WW_LoadROMMap()
	%WWBank80Macros(!BANK_00, !BANK_00)
	%WWBank81Macros(!BANK_01, !BANK_01)
	%WWBank82Macros(!BANK_02, !BANK_02)
	%WWBank83Macros(!BANK_03, !BANK_03)
	%WWBank84Macros(!BANK_04, !BANK_04)
	%WWBank85Macros(!BANK_05, !BANK_05)
	%WWBank86Macros(!BANK_06, !BANK_06)
	%WWBank87Macros(!BANK_07, !BANK_07)
	%WWBank88Macros(!BANK_08, !BANK_08)
	%WWBank89Macros(!BANK_09, !BANK_09)
	%WWBank8AMacros(!BANK_0A, !BANK_0A)
	%WWBank8BMacros(!BANK_0B, !BANK_0B)
	%WWBank8CMacros(!BANK_0C, !BANK_0C)
	%WWBank8DMacros(!BANK_0D, !BANK_0D)
	%WWBank8EMacros(!BANK_0E, !BANK_0E)
	%WWBank8FMacros(!BANK_0F, !BANK_0F)
	%WWBank90Macros(!BANK_10, !BANK_1E)
	%WWBank9FMacros(!BANK_1F, !BANK_1F)
endmacro
