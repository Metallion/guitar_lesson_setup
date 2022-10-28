#!/bin/bash

echo "Connecting to Skype"

pw-link "mixer_andreas:Master L" "Skype:input_FL"
pw-link "mixer_andreas:Master R" "Skype:input_FR"
pw-link "Skype:output_FL" "mixer_itani:Itani Voice L"
pw-link "Skype:output_FR" "mixer_itani:Itani Voice R"
