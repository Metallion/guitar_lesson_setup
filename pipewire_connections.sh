#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

video_call_software="${1:-skype}"
mic="${2:-scarlett}"

"${SCRIPT_DIR}/lesson_setup/pipewire_connections/main.sh"
"${SCRIPT_DIR}/lesson_setup/pipewire_connections/mics/${mic}.sh"
"${SCRIPT_DIR}/lesson_setup/pipewire_connections/video_call_softwares/${video_call_software}.sh"
