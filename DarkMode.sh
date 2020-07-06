#! /bin/zsh

lookandfeeltool --apply org.kde.breezedark.desktop;

sleep 5;

kquitapp5 plasmashell && kwin_x11 --replace & kstart5 plasmashell;

sleep 5;

konsoleprofile colors=Breeze;

sed -i 's/DefaultProfile=BreezeLight.profile/DefaultProfile=BreezeDark.profile/g' /home/ron/.config/konsolerc;
 
