#!/bin/bash
report=$(curl wttr.in/?format="%C,+%t")
echo $report
