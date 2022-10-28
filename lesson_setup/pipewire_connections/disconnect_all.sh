#!/bin/bash

pw-link -l | grep -B1 -- '->' | grep -v -- '--' | while read line1 && read line2
do
  source="$line1"
  destination=$(echo $line2 | cut -d '>' -f2 | xargs)

  pw-link -d "$source" "$destination"
done
