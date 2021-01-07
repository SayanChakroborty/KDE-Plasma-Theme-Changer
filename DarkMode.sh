#!/bin/sh

if (grep "ColorScheme=ArcDark" ~/.config/kdeglobals);

then exit;

else konsoleprofile colors="ArcDark";

sed -i '/DefaultProfile/c\DefaultProfile=Night.profile' ~/.config/konsolerc;

lookandfeeltool --apply com.github.sayan.night;

kquitapp5 plasmashell && kstart5 plasmashell;

sed -i '/Net\/ThemeName/c\Net\/ThemeName "Arc-Dark"' ~/.config/xsettingsd/xsettingsd.conf;

xsettingsd;

fi
