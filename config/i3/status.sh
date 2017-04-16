#!/bin/bash
# $HOME/.config/i3/status.sh
#----------
#
#----------

SLEEP=2
ICONPATH="/home/gpix/.config/i3/icons/stlarch_icons"
COLOR_ICON="#BA2020"
CRIT_COLOR="#ff2c4a"
DZEN_FG="#A0A0A0"
DZEN_BG="#1f1f1f"
HEIGHT=12
WIDTH=1100
X=450
Y=3
BAR_FG="#BA2020"
BAR_BG="#808080"
BAR_H=7
BAR_W=40
FONT="-*-terminus-medium-r-*-*-12-*-*-*-*-*-iso10646-*"
VUP="amixer -c0 -q set Master 2dB+"
VDOWN="amixer -c0 -q set Master 2dB-"
EVENT="button3=exit;button1=exec:$VUP;button2=exec:$VDOWN;"
DZEN="dzen2 -x $X -y $Y -w $WIDTH -h $HEIGHT -fn $FONT -ta right -bg $DZEN_BG -fg $DZEN_FG"

## Entry
while :; do
  sleep ${SLEEP}

  Volume() {
    VOL=$( amixer get Master | egrep -o "[0-9]+%" | tr -d '%' )
    echo -n "^fg($COLOR_ICON)^i($ICONPATH/vol1.xbm)^fg()" $( echo $VOL | gdbar -fg $BAR_FG -bg $BAR_BG -h $BAR_H -w 2 -s v -s 2 -non1 )
    return
  }

  Print() {
    Volume
    echo
    return
  }

  echo "$(Print)"
done | $DZEN &
