@echo off
set /a var=1
:LOOP

echo %var%
@wget https://www.acmodasi.com.ua/actors/actors_profiles_%var%.html --no-check-certificate -q -N
if %var% gtr 2231 goto :END
set /a var+=1

goto :LOOP
:END
pause