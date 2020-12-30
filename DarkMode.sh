#!/bin/sh

if (grep "ColorScheme=ArcDark" ~/.config/kdeglobals);

then exit;

else lookandfeeltool --apply com.github.sayan.night;

kquitapp5 plasmashell && kstart5 plasmashell;

kwin_x11 --replace;

sed -i 's/Net\/ThemeName\ \"Arc-Dark\"/Net\/ThemeName\ \"Arc\"/g' ~/.config/xsettingsd/xsettingsd.conf;

xsettingsd;

konsoleprofile colors="ArcDark";

sed -i 's/DefaultProfile=Day.profile/DefaultProfile=Night.profile/g' ~/.config/konsolerc;

fi
