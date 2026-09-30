# S2x Dedicated Server Configs

Ready-to-edit configurations and launchers for S2x Multiplayer and Zombies dedicated servers.

## Installation

1. Place `s2x.exe` in the Call of Duty: WWII installation directory.
2. Copy `!start_mp_server.bat`, `!start_zm_server.bat`, and the included `s2x` folder into the same directory.
3. Edit `s2x/server_mp.cfg` or `s2x/server_zm.cfg` for the server you want to host.
4. Allow `s2x.exe` through the firewall and forward the launcher's `SERVER_PORT` as UDP when hosting over the internet.
5. Run `!start_mp_server.bat` or `!start_zm_server.bat`.

Your game directory should contain:

```text
Call of Duty WWII/
|- s2x.exe
|- !start_mp_server.bat
|- !start_zm_server.bat
`- s2x/
   |- server_mp.cfg
   `- server_zm.cfg
```

## Configuration

- Change `sv_hostname` to set the displayed server name.
- Keep `sv_maxclients` and `sv_maxplayers` equal. Multiplayer supports up to 18 players; Zombies supports up to 4.
- `sv_minplayers` sets how many players the server waits for, capped at `sv_maxplayers`.
- Migrate existing configs from `party_maxplayers`/`party_minplayers` to `sv_maxplayers`/`sv_minplayers`; the stock game swallows sets on the old names. Use an S2x build with the dedicated player-limit fix.
- `party_matchStartDelay` controls the delay before a match starts.
- Edit `sv_maprotation` to select maps and gametypes. The config files contain the available names and examples.
- Gametype-specific rules such as score limits, time limits, rounds, and respawn delays are documented in each config.
- Change `SERVER_PORT` in the launcher when running multiple servers.

Console output is written to `s2x/logs/console.log` by default.
