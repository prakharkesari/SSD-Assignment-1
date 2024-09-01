#!/bin/bash

du -sh -- */ 2>/dev/null | sort -h | awk '{print $2 "\t" $1}'