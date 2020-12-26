lookandfeeltool --apply org.kde.breeze.desktop;

kquitapp5 plasmashell;

kwin_x11 --replace &;

kstart5 plasmashell;

konsoleprofile colors=Breeze Light;

sed -i 's/DefaultProfile=BreezeDark.profile/DefaultProfile=BreezeLight.profile/g' ~/.config/konsolerc;
