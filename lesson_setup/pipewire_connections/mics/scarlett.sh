#!/bin/bash
VOICE_CAPTURE="alsa_input.usb-Focusrite_Scarlett_2i2_USB-00.analog-stereo:capture_FL"

echo "Using Scarlett 2i2"

pw-link "${VOICE_CAPTURE}" "mixer_andreas:Voice"

