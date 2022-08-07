#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

pkill xscreensaver

i3-msg "append_layout ${SCRIPT_DIR}/lesson_setup/i3_layout/lesson_layout.json"

hydrogen &
pw-jack jack_mixer -c "${SCRIPT_DIR}/lesson_setup/mixer_config/andreas.xml" mixer_andreas &
pw-jack jack_mixer -c "${SCRIPT_DIR}/lesson_setup/mixer_config/itani.xml" mixer_itani &
alacritty &

pw-jack qjackctl &
skypeforlinux &
vivaldi-stable &
clementine &
