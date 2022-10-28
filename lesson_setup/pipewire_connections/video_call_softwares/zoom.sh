#!/bin/bash

echo "Connecting to Zoom"

pw-link "mixer_andreas:Master L" "ZOOM VoiceEngine:input_FL"
pw-link "mixer_andreas:Master R" "ZOOM VoiceEngine:input_FR"
pw-link "ZOOM VoiceEngine:output_FL" "mixer_itani:Itani Voice L"
pw-link "ZOOM VoiceEngine:output_FR" "mixer_itani:Itani Voice R"
