:: Установки
SET RDIR=C:\Users\restot\a

:: Удаляем папки с диннющими путями (не поможет если вложенность более 255)

FOR /R %RDIR% %%i IN (.) DO (

FOR /R %RDIR% %%i IN (.) DO ren %%i "a"
FOR /R %RDIR% %%i IN (.) DO rd /s /q %%i

)

pause