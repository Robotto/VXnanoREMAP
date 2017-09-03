#!/bin/bash
echo "VX nano remaps. Sets back button to middle mouse, leftscroll to F5, and rightscroll to ALT+F4."
cp xbindkeys.desktop ~/.config/autostart && cp xinput.desktop ~/.config/autostart && cp .xbindkeysrc ~/ && echo "Done. Relogin for the autostarts to run." && exit 0
#if something on above line fails, echo failure.
echo "fail.. does ~/.config/autostart exist?"
