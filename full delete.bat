:: ���������
SET RDIR=C:\Users\restot\a

:: ������� ����� � ��������� ������ (�� ������� ���� ����������� ����� 255)

FOR /R %RDIR% %%i IN (.) DO (

FOR /R %RDIR% %%i IN (.) DO ren %%i "a"
FOR /R %RDIR% %%i IN (.) DO rd /s /q %%i

)

pause