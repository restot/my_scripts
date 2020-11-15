#!/bin/bash
#cd /var/www/tulahack.ru/html
#git pull
#bash --login
#screen -X -S rails quit
screen -r "rails" -X stuff '^C'
screen -r "rails" -X stuff 'git pull^M'
screen -r "rails" -X stuff 'bundle install^M'
screen -r "rails" -X stuff 'rails db:migrate^M'
screen -r "rails" -X stuff 'puma -b unix:///home/g92ilya_icom/shawarma-provate/tmp/sockets/puma.sock
^M'
#cd /home/g92ilya_icom/shawarma-provate
