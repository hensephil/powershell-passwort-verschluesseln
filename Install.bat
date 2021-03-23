::: Erstellt am 23.03.2021 - Philipp Hense - Zentrale IT NES :::
@echo off

cd \
mkdir \temp\Passwort-Verschluesseln
robocopy "%USERPROFILE%\Downloads\powershell-passwort-verschluesseln-master\source" "%SYSTEMDRIVE%\temp\Passwort-Verschluesseln" -e