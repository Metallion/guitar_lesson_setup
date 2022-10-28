#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

video_call_software="${1:-skype}"

"${SCRIPT_DIR}/lesson_setup/pipewire_connections/main.sh"

# Mics
#"${SCRIPT_DIR}/lesson_setup/pipewire_connections/mics/webcam.sh"
#"${SCRIPT_DIR}/lesson_setup/pipewire_connections/mics/onboard.sh"
"${SCRIPT_DIR}/lesson_setup/pipewire_connections/mics/scarlett.sh"

# Video call
"${SCRIPT_DIR}/lesson_setup/pipewire_connections/video_call_softwares/${video_call_software}.sh"
#"${SCRIPT_DIR}/lesson_setup/pipewire_connections/video_call_softwares/zoom.sh"
#"${SCRIPT_DIR}/lesson_setup/pipewire_connections/video_call_softwares/skype.sh"
#"${SCRIPT_DIR}/lesson_setup/pipewire_connections/video_call_softwares/google_meet.sh"
