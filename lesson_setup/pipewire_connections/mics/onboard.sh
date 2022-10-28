#!/bin/bash

echo "Using onboard mic"

pw-link "alsa_input.pci-0000_0c_00.4.analog-stereo:capture_FL" "mixer_andreas:Voice"
