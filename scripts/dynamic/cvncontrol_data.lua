env.info( "[JTF-1] cvncontrol_data" )

--- MISSION JTF1 MENU SETTINGS FOR MIZ
--
-- This file MUST be loaded AFTER JTF1menu.lua
--
-- These values are specific to the miz and will override the default values in JTF1
--

-- Error prevention. Create empty container if module core lua not loaded.
if not CVNCONTROL then 
	CVNCONTROL = {}
	JTF1.traceTitle = "[JTF-1 CVNCONTROL] "
	_msg = CVNCONTROL.traceTitle .. "CORE FILE NOT LOADED!"
	BASE:E(_msg)
end

-- table of CVNs
CVNCONTROL.cvn = {
	{
		name = "CVN72",
		group = "JTF-1_CVN72",
		unit = "JTF-1_CVN72",
		menutext = "CVN-72 Lincoln",
		deckoffset = -13,
        uturn = true,
		recoveryspeed = 32,
		tacan = 72,
		tacanid = "ABE",
		icls = 2,
		iclsid = "ABE",
		radio = 274.075,
		radiomodulation = radio.modulation.AM,
		cruise = 15,
		tanker = true,
		tankertemplate = nil,
		tankercallsign = CALLSIGN.Tanker.Texaco,
		tankercallsignnumber = 6,
		tankertacan = 38,
		tankertacanid = "TEX",
		tankerradio = 317.775,
	},
}


-- start the mission timer
if CVNCONTROL.Start then
	_msg = JTF1.traceTitle .. "Call Start()"
	BASE:T(_msg)
	CVNCONTROL:Start()
end
