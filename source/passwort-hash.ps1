### Erstellt am 23.03.2021 - Philipp Hense - Zentrale IT NES ###
param (
 [string] $Eingabe = $Eingabe
)


$File = "$Eingabe"
$File_a = ("$File").TrimStart("System.Windows.Forms.TextBox, Text: ")
$File_neu = $File_a + "\passwort.txt"
$password = Read-Host Bitte Passwort eingeben -AsSecureString
$key = (3,4,2,3,6,2,1,1,2,3,2,4,3,1,4,2)
$password | ConvertFrom-SecureString -key $key| Set-Content ("$file_neu")