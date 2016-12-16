@echo off
set /a var=326
:LOOP
color c
echo %var%
@wget http://storage.film.ua:9080/a_show_actor.php?id=%var% --header "Authorization: Basic Y2FzdGluZzoxMzA4MjAxMA==" --header "Cookie: PHPSESSID=ccj37kg3bdsa0v9h5c15asm942" -O person_%var%.html -q -N
if %var% gtr 18710 goto :END
set /a var+=1
color e
ping -n 2 127.0.0.1 >nul
color a
goto :LOOP
:END
pause