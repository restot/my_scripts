@echo on
echo.
if not exist C:\USR\vhosts-off.txt goto no_vhosts
echo Restore hosts file:
copy /v /y C:\USR\vhosts-off.txt C:\WINDOWS\system32\drivers\etc\hosts
echo.
:no_vhosts
NET stop Apache2.4
NET stop MySQL
pause