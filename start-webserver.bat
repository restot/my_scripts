@echo on
echo.
if not exist C:\USR\vhosts-on.txt goto no_vhosts
echo Create virtual hosts:
copy /v /y C:\USR\vhosts-on.txt C:\WINDOWS\system32\drivers\etc\hosts
echo.
:no_vhosts
NET start Apache2.4
NET start MySQL
pause