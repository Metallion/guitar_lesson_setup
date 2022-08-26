#!/bin/bash

#set -xe

GUITAR_CAPTURE_L="alsa_input.usb-Yamaha_Corporation_THR10-00.analog-surround-40:capture_FL"
GUITAR_CAPTURE_R="alsa_input.usb-Yamaha_Corporation_THR10-00.analog-surround-40:capture_FR"
THR10_MONITOR_L="alsa_output.usb-Yamaha_Corporation_THR10-00.analog-stereo:monitor_FL"
THR10_MONITOR_R="alsa_output.usb-Yamaha_Corporation_THR10-00.analog-stereo:monitor_FR"

ZOOM_INPUT_L="ZOOM VoiceEngine:input_FL"
ZOOM_INPUT_R="ZOOM VoiceEngine:input_FR"
ZOOM_OUTPUT_L="ZOOM VoiceEngine:output_FL"
ZOOM_OUTPUT_R="ZOOM VoiceEngine:output_FR"

THR10_PLAYBACK_L="alsa_output.usb-Yamaha_Corporation_THR10-00.analog-stereo:playback_FL"
THR10_PLAYBACK_R="alsa_output.usb-Yamaha_Corporation_THR10-00.analog-stereo:playback_FR"

PC_ONBOARD_PLAYBACK_L="alsa_output.pci-0000_0c_00.4.analog-stereo:playback_FL"
PC_ONBOARD_PLAYBACK_R="alsa_output.pci-0000_0c_00.4.analog-stereo:playback_FR"

# Read all existing links and disconnect them all
pw-link -l | while read line1 && read line2
do
  direction=$(echo $line2 | cut -d ' ' -f1)
  if [[ "$direction" == "|->" ]]; then
    output_interface="$(echo "$line2" | sed 's/.*|-> //')"
    pw-link -d "$line1" "$output_interface"
  fi
done

if [[ "$1" == "disconnect" ]]; then
  exit 0
fi

# Connect everything the way it should be

# Mixer inputs
pw-link "$GUITAR_CAPTURE_L" "mixer_andreas:Guitar L"
pw-link "$GUITAR_CAPTURE_R" "mixer_andreas:Guitar R"
pw-link "$THR10_MONITOR_L" "mixer_andreas:PC Audio L"
pw-link "$THR10_MONITOR_R" "mixer_andreas:PC Audio R"

# Hydrogen
pw-link "Hydrogen:output_FL" "$THR10_PLAYBACK_L"
pw-link "Hydrogen:output_FR" "$THR10_PLAYBACK_R"

## Itani Voice
pw-link "mixer_itani:Itani Voice Out L" "$PC_ONBOARD_PLAYBACK_L"
pw-link "mixer_itani:Itani Voice Out R" "$PC_ONBOARD_PLAYBACK_R"
