@echo off
setlocal

pushd "%~dp0" || exit /b 1

:: Edit these values when running multiple servers.
set "SERVER_EXE=s2x.exe"
set "SERVER_CONFIG=server_mp.cfg"
set "SERVER_PORT=27016"

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

echo Starting S2x Multiplayer Dedicated Server on UDP port %SERVER_PORT%...
start "S2x Multiplayer Dedicated Server" "%SERVER_EXE%" -dedicated -multiplayer +set net_port "%SERVER_PORT%" +exec %SERVER_CONFIG% +map_rotate

popd
endlocal
