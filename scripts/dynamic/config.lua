Config = Config or {}
Config.lossCompensation = 1.0 -- gives advantage to the side with less zones. Set to 0 to disable
Config.randomBoost = 0.0004 -- adds a random factor to build speeds that changes every 30 minutes, set to 0 to disable
Config.buildSpeed = 6 -- structure and defense build speed (smaller number longer build times)
Config.supplyBuildSpeed = 85 -- supply helicopters and convoys build speed (smaller number longer build times)
Config.missionBuildSpeedReduction = 0.04 -- reduction of build speed in case of ai missions (smaller number longer build times)
Config.maxDistFromFront = Config.maxDistFromFront or 129640 -- max distance in meters from front after which zone is forced into low activity state (export mode)