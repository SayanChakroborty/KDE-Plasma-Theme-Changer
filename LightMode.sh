#!/bin/sh

if (grep "ColorScheme=ArcDark" ~/.config/kdeglobals);

then lookandfeeltool --apply com.github.sayan.day;

gsettings set org.gnome.desktop.interface gtk-theme "Arc";

kquitapp5 plasmashell && kstart5 plasmashell;

kwin_x11 --replace &

konsoleprofile colors="Arc";

sed -i 's/DefaultProfile=Night.profile/DefaultProfile=Day.profile/g' ~/.config/konsolerc;

fi
