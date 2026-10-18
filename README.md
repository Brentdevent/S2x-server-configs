# S2x Dedicated Server Configs

Ready-to-edit configurations and launchers for S2x Multiplayer, Zombies, and Headquarters dedicated servers.

## Installation

1. Place `s2x.exe` in the Call of Duty: WWII installation directory.
2. Copy the launcher for the server you want to host and the included `s2x` folder into the same directory.
3. Edit `s2x/server_mp.cfg`, `s2x/server_zm.cfg`, or `s2x/server_hq.cfg` for the server you want to host.
4. Allow `s2x.exe` through the firewall and forward the launcher's `SERVER_PORT` as UDP when hosting over the internet.
5. Run `!start_mp_server.bat`, `!start_zm_server.bat`, or `!start_hq_server.bat`.

Your game directory should contain:

```text
Call of Duty WWII/
|- s2x.exe
|- !start_mp_server.bat
|- !start_zm_server.bat
|- !start_hq_server.bat
`- s2x/
   |- server_mp.cfg
   |- server_zm.cfg
   `- server_hq.cfg
```

## Multiplayer and Zombies configuration

- Change `sv_hostname` to set the displayed server name.
- Multiplayer supports up to 18 players; Zombies supports up to 4.
- `party_matchStartDelay` controls the delay before a match starts.
- Edit `sv_maprotation` to select maps and gametypes. The config files contain the available names and examples.
- Gametype-specific rules such as score limits, time limits, rounds, and respawn delays are documented in each config.
- Change `SERVER_PORT` in the launcher when running multiple servers.

Console output is written to `s2x/logs/console.log` by default.

## Headquarters

- Edit `s2x/server_hq.cfg` for the server name, visibility, and log path.
- Run `!start_hq_server.bat`. The default UDP port is `27018`; change `SERVER_PORT` in the launcher if needed.
- HQ supports 47 players and stays available when empty. No map rotation is needed.
