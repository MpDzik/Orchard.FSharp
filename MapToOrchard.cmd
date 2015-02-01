@echo off

if "%1" == "" goto usage

mklink /J %1\src\Orchard.Web\Modules\Orchard.FSharp %~dp0src\Orchard.FSharp
mklink /J %1\src\Orchard.Tests.Modules.FSharp %~dp0src\Orchard.Tests.Modules.FSharp
mklink /J %1\lib\dynamitey %~dp0lib\dynamitey
mklink /J %1\lib\fsharp-dynamic %~dp0lib\fsharp-dynamic
goto done

:usage
echo Usage: MapToOrchard.cmd OrchardRootDir
goto exit

:done
echo Done.

:exit