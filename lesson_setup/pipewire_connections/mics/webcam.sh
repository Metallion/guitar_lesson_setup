#!/bin/bash
VOICE_CAPTURE="alsa_input.usb-046d_HD_Pro_Webcam_C920_2259ABAF-02.analog-stereo:capture_FL"

pw-link "${VOICE_CAPTURE}" "mixer_andreas:Voice"
