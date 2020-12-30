#!/bin/sh

if (grep "ColorScheme=ArcDark" ~/.config/kdeglobals);

then lookandfeeltool --apply com.github.sayan.day;

kquitapp5 plasmashell && kstart5 plasmashell;

kwin_x11 --replace;

sed -i 's/Net\/ThemeName\ \"Arc\"/Net\/ThemeName\ \"Arc-Dark\"/g' ~/.config/xsettingsd/xsettingsd.conf;

xsettingsd;

konsoleprofile colors="Arc";

sed -i 's/DefaultProfile=Night.profile/DefaultProfile=Day.profile/g' ~/.config/konsolerc;

fi
