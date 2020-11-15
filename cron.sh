#!/bin/bash
screen -S "webhook" -d -m
screen -r "webhook" -X stuff 'webhook -hooks /home/g92ilya_icom/hooks.json -verbose \n'
screen -S "rails" -d -m
screen -r "rails" -X stuff 'bash --login^M'
screen -r "rails" -X stuff 'cd /home/g92ilya_icom/shawarma-provate^M'
screen -r "rails" -X stuff 'puma -b unix:///home/g92ilya_icom/shawarma-provate/tmp/sockets/puma.sock
^M'
