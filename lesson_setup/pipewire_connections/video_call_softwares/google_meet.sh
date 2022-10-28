#!/bin/bash

echo "Connecting to Google Meet"

pw-link "mixer_andreas:Master L" "Chromium input:input_FL"
pw-link "mixer_andreas:Master R" "Chromium input:input_FR"
pw-link "Chromium:output_FL" "mixer_itani:Itani Voice L"
pw-link "Chromium:output_FR" "mixer_itani:Itani Voice R"
