#!/bin/bash
VOICE_CAPTURE="alsa_input.usb-Focusrite_Scarlett_2i2_USB-00.analog-stereo:capture_FL"

pw-link "${VOICE_CAPTURE}" "mixer_andreas:Voice"

