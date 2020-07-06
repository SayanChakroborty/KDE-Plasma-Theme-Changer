#! /bin/zsh

lookandfeeltool --apply org.kde.breeze.desktop;

sleep 5;

kquitapp5 plasmashell && kwin_x11 --replace & kstart5 plasmashell;

sleep 5;

konsoleprofile colors=Breeze Light;

sed -i 's/DefaultProfile=BreezeDark.profile/DefaultProfile=BreezeLight.profile/g' /home/ron/.config/konsolerc;
