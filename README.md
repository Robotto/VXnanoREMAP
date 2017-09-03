# VX nano remap
Notes so i remember how to do this next time.

## Install this

```
sudo apt install xautomation xbindkeys
```	

xautomation contains xte which is used to trigger the keyboard inputs.
xbindkeys is used to remap stuff
## Put these files here:
Or run:
```
install.sh
```	
which does the same ting.

~/.config/autostart/xbindkeys.desktop   - autostarts xbindskeys on boot. Xbindkeys reads the configuration from .xbindkeysrc
~/.config/autostart/xinput.desktop      - remaps mouse buttons (middle mouse on backbutton)

~/.xbindkeysrc  - Contains the keyboard keymappings for the sidescroll buttons