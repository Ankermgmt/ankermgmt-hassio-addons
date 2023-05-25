> **NOTE**
> The ankerctl addon should be considered a work in progress!

# Home assistant add-on: ankerctl
![Arch](https://img.shields.io/badge/dynamic/yaml?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2Fankermgmt%2Fankermgmt-hassio-addons%2Fmaster%2Fankerctl%2Fconfig.yaml)

## About
[ankerctl](https://github.com/Ankermgmt/ankermake-m5-protocol) provides a web UI for monitoring your AnkerMake 3D printer.
This addon is based on the docker image provided in https://github.com/Ankermgmt/ankermake-m5-protocol

## Installation
The installation of this add-on is pretty straightforward and not different in comparison to installing any other add-on.

1. Add this add-ons repository to your Home Assistant instance

   [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fankermgmt%2Fankermgmt-hassio-addons)
2. Install this add-on.
3. Start the add-on.
4. Check the logs of the add-on to see if everything went well.
5. Open the web UI and upload your login.json (see the web UI or [ankerctl](https://github.com/Ankermgmt/ankermake-m5-protocol) for more information.)

## Configuration
Web UI can be found at <http://your-ip:PORT> (default port is 4470).

## Support
Create an issue on GitHub
