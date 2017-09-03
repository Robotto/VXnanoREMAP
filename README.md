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


# Disabling trackpad sidescrolling and disabling while typing:
An unpleasant side effect of the keyboard mappings of the sidescroll is that it works for every mouse on the system. A workaround while i figure out how xbindkeys distinguishes between mice is to disable sidescrolling. While we're at it we're gonna turn of the "feature" that disables the trackpad while typing (so i can play minecraft again.)

Since ubuntu 16.04 libinput is used instead of the synaptics stuff (synclient)

You may need to install:

```
sudo apt install xserver-xorg-input-libinput libinput-tools"
```
List devices with:

```
xinput list
```	
"
list device properties with:

```
xinput list-props [ID] 
```	

Change the values of "libinput Disable While Typing Enabled (305)" and "libinput Horizontal Scroll Enabled (293)"

```
xinput set-prop [ID] 293 0
xinput set-prop [ID] 305 0
```	

##Note: Both ID and propertyvalues may differ.