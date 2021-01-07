#!/bin/sh

if (grep "ColorScheme=ArcDark" ~/.config/kdeglobals);

then konsoleprofile colors="Arc";

sed -i '/DefaultProfile/c\DefaultProfile=Day.profile' ~/.config/konsolerc;

lookandfeeltool --apply com.github.sayan.day;

kquitapp5 plasmashell && kstart5 plasmashell;

sed -i '/Net\/ThemeName/c\Net\/ThemeName "Arc"' ~/.config/xsettingsd/xsettingsd.conf;

xsettingsd;

fi
