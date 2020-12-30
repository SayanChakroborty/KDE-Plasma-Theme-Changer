#!/bin/sh

if (grep "ColorScheme=ArcDark" ~/.config/kdeglobals);

then exit;

else lookandfeeltool --apply com.github.sayan.night;

gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark";

kquitapp5 plasmashell && kstart5 plasmashell;

kwin_x11 --replace &

konsoleprofile colors="ArcDark";

sed -i 's/DefaultProfile=Day.profile/DefaultProfile=Night.profile/g' ~/.config/konsolerc;

fi
