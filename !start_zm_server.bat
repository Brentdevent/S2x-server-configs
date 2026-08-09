@echo off
setlocal

pushd "%~dp0" || exit /b 1

:: Edit these values when running multiple servers.
set "SERVER_EXE=s2x.exe"
set "SERVER_CONFIG=server_zm.cfg"
set "SERVER_PORT=27017"

if not exist "%SERVER_EXE%" (
    echo ERROR: %SERVER_EXE% was not found next to this launcher.
    popd
    exit /b 1
)

if not exist "s2x\%SERVER_CONFIG%" (
    echo ERROR: s2x\%SERVER_CONFIG% was not found.
    popd
    exit /b 1
)

echo Starting S2x Zombies Dedicated Server on UDP port %SERVER_PORT%...
start "S2x Zombies Dedicated Server" "%SERVER_EXE%" -dedicated +zombiesMode 1 +set net_port "%SERVER_PORT%" +exec %SERVER_CONFIG% +map_rotate

popd
endlocal
