#!/bin/sh

plasma-theme --colors /usr/share/color-schemes/BreezeLight.colors --colors /usr/share/color-schemes/BreezeDark.colors;

if (grep "ColorScheme=BreezeLight" ~/.config/kdeglobals);

then sed -i '/Net\/ThemeName/c\Net\/ThemeName "Breeze"' ~/.config/xsettingsd/xsettingsd.conf;

xsettingsd &

konsoleprofile colors="BreezeLight";

sed -i 's/DefaultProfile=Night.profile/DefaultProfile=Day.profile/g' ~/.config/konsolerc;

else sed -i '/Net\/ThemeName/c\Net\/ThemeName "Breeze-Dark"' ~/.config/xsettingsd/xsettingsd.conf

xsettingsd &

konsoleprofile colors="Breeze";

sed -i 's/DefaultProfile=Day.profile/DefaultProfile=Night.profile/g' ~/.config/konsolerc;

fi
