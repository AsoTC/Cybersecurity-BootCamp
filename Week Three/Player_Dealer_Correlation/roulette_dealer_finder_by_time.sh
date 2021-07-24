#!/bin/bash
echo 'Searching for dealers working at :[ ' $1 '] time on the date of [' $2 ']'
echo ""  
grep -s "$1" "$2_Dealer_schedule" | awk -F'\t' '{print $1,$3}'
