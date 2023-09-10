env.info( "[JTF-1] supportaircraft_data" )

--- Support Aircraft Defined in this file
--
-- **NOTE**: SUPPORTAIRCRAFT.LUA MUST BE LOADED BEFORE THIS FILE IS LOADED!
--
-- This file contains the config data specific to the miz in which it will be used.
-- All functions and key values are in SUPPORTAIRCRAFT.LUA, which should be loaded first
--
-- Load order in miz MUST be;
--     1. supportaircraft.lua
--     2. supportaircraft_data.lua
--

-- Error prevention. Create empty container if SUPPORTAIRCRAFT.LUA is not loaded or has failed.
if not SUPPORTAC then 
	SUPPORTAC = {}
	SUPPORTAC.traceTitle = "[JTF-1 SUPPORTAC] "
	_msg = SUPPORTAC.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
end

SUPPORTAC.useSRS = true

-- Support aircraft missions. Each mission block defines a support aircraft mission. Each block is processed
-- and an aircraft will be spawned for the mission. When the mission is cancelled, eg after RTB or if it is destroyed,
-- a new aircraft will be spawned and a fresh AUFTRAG created.
--
-- See SUPPORTAC.missionDefault in supportaircraft.lua for all mission options.
--
SUPPORTAC.mission = {
	{
		name = "ARWB",
		category = SUPPORTAC.category.tanker,
		type = SUPPORTAC.type.tankerBoom,
		zone = "ARWB",
		callsign = CALLSIGN.Tanker.Arco,
		callsignNumber = 1,
		tacan = 36,
		tacanid = "ARC",
		radio = 276.5,
		flightLevel = 240,
		speed = 315,
		heading = 45,
		leg = 40,
		homeAirbase = AIRBASE.Syria.Ramat_David,
	},
	{
		name = "ARWB",
		category = SUPPORTAC.category.tanker,
		type = SUPPORTAC.type.tankerProbe,
		zone = "ARWB",
		callsign = CALLSIGN.Tanker.Shell,
		callsignNumber = 1,
		tacan = 115,
		tacanid = "SHL",
		radio = 317.5,
		flightLevel = 200,
		speed = 315,
		heading = 45,
		leg = 40,
		homeAirbase = AIRBASE.Syria.Ramat_David,
	},
	{
		name = "ARXE",
		category = SUPPORTAC.category.tanker,
		type = SUPPORTAC.type.tankerBoom,
		zone = "ARXE",
		callsign = CALLSIGN.Tanker.Arco,
		callsignNumber = 2,
		tacan = 105,
		tacanid = "ARC",
		radio = 276.5,
		flightLevel = 240,
		speed = 315,
		heading = 4,
		leg = 40,
		homeAirbase = AIRBASE.Syria.Incirlik,
	},
	{
		name = "ARXE",
		category = SUPPORTAC.category.tanker,
		type = SUPPORTAC.type.tankerProbe,
		zone = "ARXE",
		callsign = CALLSIGN.Tanker.Shell,
		callsignNumber = 2,
		tacan = 106,
		tacanid = "SHL",
		radio = 317.5,
		flightLevel = 200,
		speed = 315,
		heading = 4,
		leg = 40,
		homeAirbase = AIRBASE.Syria.Incirlik,
	},
	{
		name = "AWACSSOUTH",
		category = SUPPORTAC.category.awacs,
		type = SUPPORTAC.type.awacsE3a,
		zone = "AWACSSOUTH",
		callsign = CALLSIGN.AWACS.Magic,
		callsignNumber = 1,
		tacan = nil,
		tacanid = nil,
		radio = 367.575,
		flightLevel = 300,
		speed = 400,
		heading = 109,
		leg = 60,
		activateDelay = 5,
		despawnDelay = 10,
		fuelLowThreshold = 15,
		homeAirbase = AIRBASE.Syria.Ramat_David,
	},
}

-- call the function that initialises the SUPPORTAC module
if SUPPORTAC.Start ~= nil then
  _msg = SUPPORTAC.traceTitle .. "SUPPORTAIRCRAFT_DATA - call SUPPORTAC:Start()."
  BASE:I(_msg)
  SUPPORTAC:Start()
end


