#!/bin/bash

mkdir -p temp_activity
touch temp_activity/temp{1..50}.sh

for i in {1..25}; do mv "temp_activity/temp$i.sh" "temp_activity/temp$i.txt"; done

echo "Done"
