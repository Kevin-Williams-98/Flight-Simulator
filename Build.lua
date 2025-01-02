
workspace "Flight-Simulator"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Flight-Simulator-App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Core"
	include "Flight-Simulator-Core/Build-Core.lua"
group ""

include "Flight-Simulator-App/Build-App.lua"