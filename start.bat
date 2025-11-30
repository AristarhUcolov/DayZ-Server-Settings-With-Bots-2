@echo off
:start
::Server name
set serverName=DayZ Local Server
::Server files location
set serverLocation="F:\SteamLibrary\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=8
::Sets title for terminal (DONT edit)
title %serverName% batch

::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck "-BEpath=F:\SteamLibrary\steamapps\common\DayZServer\battleye" "-profiles=F:\SteamLibrary\steamapps\common\DayZServer\profiles" "-mod=@CF;@Dabs Framework;@DayZ-Expansion-AI;@DayZ-Expansion-Core;@Community-Online-Tools;@Bitterroot;@sFramework;@sVisual;@sGunplay;@Admirals Melee Mod;@Admirals Parachute Mod;@Better-Snap-Sounds;@BleedTrail;@DayZ-Expansion-Animations;@BuilderItems;@CorpseSearching;@Decoy Helmet;@Eternal Day;@ViewInventoryAnimation;@Immersive Armor;@InediaMovement;@PvZmoD_CustomisableZombies;@Overlay Removal;@Location Text;@AI Voice Broadcast [ExpansionAI];@Airborne AI;@Zens ExpansionAI Audio;@Zens Firewood Piles;@Zens Persistent Trees;@Zens Split Item GUI;@Dynamic AI Missions for DayZ Expansion AI;@GoreZ;@Mag Obfuscation;@Notes;@Reb's Ballistics - Vanilla;@ImmersiveStorages;@SkinCraft;@SuppressionMod;@Proxy Search Framework;@VendingSearch;@Search For Loot Improved;@Russian Roulette;@GarbageSearch;@Zens TreeSplosions;@GutZombies;@Radio Toggle and Push-to-Talk;@Base Fortifications;@Improvised Weapons;@BaseBuildingPlus;@Basic Territories;@Building Fortifications;@Coupled Mag Vanilla;@MBM_ChevyImpala1967;@RaG_Immersive_Vehicles;@RolePlayMod;@Zens Sleeping Mod;@PvZmoD_Spawn_System;@Zombie_Sound;@RaG_Core;@RaG_BaseItems;@DayZ-Expansion-Quests;@DayZ-Expansion-Market;@RaG_BaseItems;@DayZ-Dynamic-AI-Addon;"

::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 0
::Go back to the top and repeat the whole cycle again
goto start