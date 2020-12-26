lookandfeeltool --apply org.kde.breezedark.desktop;

kquitapp5 plasmashell && kstart5 plasmashell;

kwin_x11 --replace &;

konsoleprofile colors=Breeze;

sed -i 's/DefaultProfile=Day.profile/DefaultProfile=Night.profile/g' ~/.config/konsolerc;
