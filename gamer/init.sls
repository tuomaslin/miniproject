#dpkg --add-architecture i386:
#  cmd.run:
#   - unless: 'apt install steam | grep newest'

#pkg:
#  module.run:
#  - name: pkg.refresh_db

#/etc/apt/sources.list:
#  file.managed:
#   - source: salt://gamer/sources.list

#software-properties-common:
#  pkg.installed

programs wanted:
  pkg.installed:
    - pkgs:
      - bash-completion
      - mumble
      - youtube-dl
      - speedtest-cli

steam:
  debconf.set:
    - data:
        steam/question: {'type': 'select', 'value': 'I AGREE'}
        steam/license: {'type': 'note', 'value': ''}
  pkg.installed:
    - sources:
      - steam-launcher: http://repo.steampowered.com/steam/pool/steam/s/steam/steam-launcher_1.0.0.74_all.deb
    - require:
      - debconf: steam
