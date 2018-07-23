#! /bin/sh
echo $(date +%Y-%m-%d\ %T\ %Z) --acrhive >> cronlog.log
sudo systemctl stop s_rails
cd /home/restot/archive_logs
tar -cvvf $(date +%Y-%m-%d).tar /home/restot/runtime/ecc/log
cd /home/restot/runtime/ecc/log
sudo rm -rfv *
sudo systemctl start s_rails
