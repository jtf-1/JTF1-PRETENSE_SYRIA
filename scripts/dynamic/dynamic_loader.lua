env.info( "***[JTF-1] STARTING DYNAMIC LOADER ***" )

--- Mission script dynamic loader

local JTFbase = _G
local __JTFfilepath = 'D:\\GitHub\\JTF1-PRETENSE_SYRIA\\scripts\\dynamic\\'

__JTFLoader = {}

__JTFLoader.Include = function( JTFIncludeFile )
	if not __JTFLoader.Includes[JTFIncludeFile] then
		__JTFLoader.Includes[JTFIncludeFile] = JTFIncludeFile
		local f = assert( JTFbase.loadfile( __JTFfilepath .. JTFIncludeFile ) )
		if f == nil then
			error ("[JTF-1] Mission Loader: could not load mission file " .. JTFIncludeFile )
		else
			env.info( "[JTF-1] Mission Loader: " .. JTFIncludeFile .. " dynamically loaded." )
			return f()
		end
	end
end

__JTFLoader.Includes = {}

__JTFLoader.Include( 'mission_files.lua' )

--- End mission script dynamic loader