echo 123;
:loop
timeout /T 5 /NOBREAK
taskkill /F /FI "IMAGENAME eq git*"
taskkill /F /FI "IMAGENAME eq crash_*"
taskkill /F /FI "IMAGENAME eq Photos*"
taskkill /F /FI "IMAGENAME eq iTunes*"
taskkill /F /FI "IMAGENAME eq iPod*"
taskkill /F /FI "IMAGENAME eq Apple*"
taskkill /F /FI "IMAGENAME eq ssh*"
taskkill /F /FI "IMAGENAME eq Sky*"
taskkill /F /FI "IMAGENAME eq jusc*"
taskkill /F /FI "IMAGENAME eq OSP*"
taskkill /F /FI "IMAGENAME eq mDNS*"
taskkill /F /FI "IMAGENAME eq Input*"
taskkill /F /FI "IMAGENAME eq Search*"
taskkill /F /FI "IMAGENAME eq Setting*"
taskkill /F /FI "IMAGENAME eq Sync*"
taskkill /F /FI "IMAGENAME eq Team*"
taskkill /F /FI "IMAGENAME eq avg*"
taskkill /F /FI "IMAGENAME eq bit*"
goto loop