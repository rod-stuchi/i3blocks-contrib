# volume

Shows the current system volume. The first parameter sets the step (and units
to display). The second parameter overrides the mixer selection.
See the script for details.

Scrolling on the block changes the volume. Right clicking toggles mute.

![](volume.png)

# Usage

This block can be run on an interval or by signal. To run the block using a
signal, it is recommended to add the following to your i3 config.

```
# change volume or toggle mute
bindsym XF86AudioRaiseVolume exec amixer -q -D pulse sset Master 5%+ && pkill -RTMIN+1 i3blocks 
bindsym XF86AudioLowerVolume exec amixer -q -D pulse sset Master 5%- && pkill -RTMIN+1 i3blocks
bindsym XF86AudioMute exec amixer -q -D pulse sset Master toggle && pkill -RTMIN+1 i3blocks
```

where the number `1` in `-RTMIN+1` can be replaced to another signal number,
as long as it agrees what you put for `signal=` in your i3blocks config.


# Config

```
[volume]
command=$SCRIPT_DIR/volume
label=VOL
#label=♪
instance=Master
#instance=PCM
interval=once
signal=10
```