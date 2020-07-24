#!/bin/sh

eDP_RES="1600x900"		# MAX: 1920x2080
HDMI_RES="2560x1440"	# MAX: 2560x1440

# configuration: HDMI-eDP
display_left() {
	xrandr \
		--output eDP-1 --primary --mode "$eDP_RES"	--pos 2560x540 --rotate normal \
		--output HDMI-1 --mode "$HDMI_RES" --pos 0x0 --rotate normal
}

# configuration: eDP-HDMI
display_right() {
	xrandr \
		--output eDP-1 --primary --mode "$eDP_RES"	--pos 0x540 --rotate normal \
		--output HDMI-1 --mode "$HDMI_RES" --pos 1600x0 --rotate normal
}

display_right
