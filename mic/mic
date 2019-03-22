#! /bin/bash

case "$BLOCK_BUTTON" in
    # 1) pulseaudio-ctl mute-input ;;
    2) pulseaudio-ctl mute-input ;;
    3) pavucontrol -t 4 ;;
esac

mic=$(pulseaudio-ctl full-status | awk '{ print $3 }')
if [[ $mic == "no" ]]; then
  echo "<span color='#0ee620'>ON</span>"
else
  echo "<span color='#4a4a4a'>OFF</span>"
fi

