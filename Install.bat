@echo off

cd \
mkdir \temp\Passwort-Verschluesseln
robocopy "%USERPROFILE%\Downloads\Passwort Verschluesseln\source" "%SYSTEMDRIVE%\temp\Passwort-Verschluesseln" -e


timeout 50 /nobreak