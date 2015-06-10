
xmodmap -e "keycode 9 = grave asciitilde"
xmodmap -e "keycode 49 = Escape asciitilde"

xmodmap -e "keycode 115 = Alt_L"


# what i want:
# 105 pgdn button 8  ... xev calls pgdn "Next"
# 99 pgup button 9 ... xev calls pgup "Prior"

#xscreensaver -nosplash &

#kinput2 -xim -canna &


# set my mouse sensititivy

wmaker

mousefix.sh
xset m 10 2

setenv XMODIFIERS @im=SCIM  ; setenv LANG ja_JP.eucJP
scim -d

# look at .config/.imwheelrc
# this fixes thumb buttons on mouse to be page up and page down
imwheel


#openbox
#openbox-session



