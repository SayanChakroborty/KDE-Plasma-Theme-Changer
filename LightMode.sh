lookandfeeltool --apply org.kde.breeze.desktop;

kquitapp5 plasmashell;

kwin_x11 --replace &;

kstart5 plasmashell;

konsoleprofile colors="Breeze Light";

sed -i 's/DefaultProfile=Night.profile/DefaultProfile=Day.profile/g' ~/.config/konsolerc;
