@ECHO OFF
@echo Deepdive installer and setup Script.
set /p "ip=What will be your DeepDive Server ip? : "
start "" "certutil.exe" -addstore root htdocs\drg.ghostship.dk.crt
start "" "certutil.exe" -addstore root htdocs\services.ghostship.dk.crt
@echo Certificates Installed.
@echo .
C:
cd %windir%\System32\drivers\etc\
attrib -r hosts
FIND /C /I "#DeepDive Redirects" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO. >>%WINDIR%\system32\drivers\etc\hosts
FIND /C /I "#DeepDive Redirects" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO. >>%WINDIR%\system32\drivers\etc\hosts
FIND /C /I "#DeepDive Redirects" %windir%\System32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^#DeepDive Redirects >>%windir%\System32\drivers\etc\hosts
FIND /C /I "drg.ghostship.dk" %windir%\System32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^%ip%				drg.ghostship.dk>>%windir%\System32\drivers\etc\hosts
FIND /C /I "services.ghostship.dk" %windir%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^%ip%				services.ghostship.dk>>%windir%\System32\drivers\etc\hosts
@echo Host Entries installed.
@echo .
@echo Xampp server installed.
@echo .
C:
cd %windir%\System32\drivers\etc\
rem attrib +r hosts
pause
