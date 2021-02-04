#!/bin/bash 

pid=`pgrep wf-recorder`
status=$?

if [ $status != 0 ] 
then 
  echo '{"class": "nothing"}'
else 
  echo '{"class": "recording"}'
fi;
