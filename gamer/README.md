# SaltState to install Steam and few other programs

Ready to use SaltState for installing gaming platform Steam, Speedtest to check internet speed,
Mumble voIP program and Youtube-dl to download your favourite Youtube videos.

# How to use

- First of all you need atleast Salt-master (preferably also Salt-minion)
- Connect Salt.minion to Salt-master [(Instructions)](https://tuomaslintula.wordpress.com/2021/11/04/tehtava-h2-2/)
- Git clone this repository to `/srv/salt/`
- Use command to run Saltstate

	## From master to minion
		sudo salt '*' state.apply gamer
	
	## On master only
		sudo salt-call --local state.apply gamer

- That's it!

# Features

- SaltState os idenpotent
- Automatically installs Steam and accepts user license
- Installs Mumble, Speedtest-cli, Bash-Completion and Youtube-dl

- To open Steam installer type `steam` to console

![Image](/gamer/screenshots/steam.png)

- To open Mumble type `mumble` to console

![Image](/gamer/screenshots/mumble.png)

- To run Speedtest-cli type `speedtest` to console

![Image](/gamer/screenshots/speedtest.png)

# Sources

- Debconf formula: [https://askubuntu.com/questions/506909/how-can-i-accept-the-lience-agreement-for-steam-prior-to-apt-get-install/1017487#1017487][https://askubuntu.com/questions/506909/how-can-i-accept-the-lience-agreement-for-steam-prior-to-apt-get-install/1017487#1017487]
- Steam repository: [http://repo.steampowered.com/steam/pool/steam/s/steam/][http://repo.steampowered.com/steam/pool/steam/s/steam/]
