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
