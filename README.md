﻿Um das Powershell Skript nutzen zu können muss die Install.cmd ausgeführt werden.

• Dafür entpacken sie das ZIP File under Downloads und klicken anschließend auf die Install.bat

• Nun haben Sie unter ihrem Systemdrive\Temp einen Ornder "Passwort-Verschlüsseln"

• Öffnen Sie hier die Start Datei

• Nun werden sie ein Fenster sehen Falls Sie eine Fehlermeldung bekommen führen Sie bitte folgenden Befehl als Admin in der Powershell aus

Set-executionpolicy -executionPolicy unrestricted


• Geben Sie hier den Speicherort der der Verschlüsselten Datei an


Achtung der Pfad muss schon exestieren 


• Klicken Sie im Anschluss auf Speichern 

• Das Fenster schließt sich und ein neues geht auf in dem Sie aufgefordert werden das Passwort einzugeben



Das war es im Grunde schon um das Passwort später dann wieder auszulesen benötigen Sie folgende Befehle.

$username = "Administrator"

$password = Get-Content Dateipfad_den_Sie_angegeben_haben\passwort.txt | ConvertTo-SecureString

$credentials = New-Object System.Management.Automation.PSCredential (“$username”, $password)

