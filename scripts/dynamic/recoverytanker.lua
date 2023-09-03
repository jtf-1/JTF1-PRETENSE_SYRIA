env.info( "[JTF-1] recoverytanker" )

--- BEGIN RECOVERY TANKERS

RECTANKER = {}

function RECTANKER:Start()
-- Recovery Tanker Lincoln ---

local Spawn_Tanker_S3B_Texaco6 = RECOVERYTANKER:New( UNIT:FindByName( "CSG_CarrierGrp_Lincoln"), "Tanker_S3B_Texaco6" )

Spawn_Tanker_S3B_Texaco6:SetCallsign(CALLSIGN.Tanker.Texaco, 6)
Spawn_Tanker_S3B_Texaco6:SetTACAN(38, "TEX")
Spawn_Tanker_S3B_Texaco6:SetRadio(317.775)
Spawn_Tanker_S3B_Texaco6:SetModex(049)
Spawn_Tanker_S3B_Texaco6:SetTakeoffAir()
Spawn_Tanker_S3B_Texaco6:SetAltitude(6000)
Spawn_Tanker_S3B_Texaco6:SetRespawnInAir()
Spawn_Tanker_S3B_Texaco6:Start()

Spawn_Tanker_S3B_Texaco6:SetRecoveryAirboss( false )

-- Recovery Tanker Tarawa ---

local Spawn_Tanker_C130_Arco2 = RECOVERYTANKER:New( UNIT:FindByName( "CSG_CarrierGrp_Tarawa"), "Tanker_C130_Arco2" )

Spawn_Tanker_C130_Arco2:SetCallsign(CALLSIGN.Tanker.Arco, 2)
  :SetTACAN(39, "ARC")
  :SetRadio(276.1)
  :SetModex(999)
  :SetAltitude(10000)
  :SetTakeoffAir()
  :SetRespawnInAir()
  :SetHomeBase(AIRBASE:FindByName("Kobuleti"))
  :Start()

end

--RECTANKER:Start()
-- END BOAT SECTION
