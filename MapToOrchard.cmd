@echo off

if "%1" == "" goto usage

mklink /J %1\src\Orchard.Web\Modules\Orchard.FSharp %~dp0src\Orchard.FSharp
mklink /J %1\src\Orchard.Tests.Modules.FSharp %~dp0src\Orchard.Tests.Modules.FSharp
goto done

:usage
echo Usage: MapToOrchard.cmd OrchardRootDir
goto exit

:done
echo Done.

:exit