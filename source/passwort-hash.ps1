### Erstellt am 23.03.2021 - Philipp Hense - Zentrale IT NES ###
param (
 [string] $Eingabe = $Eingabe
)


$File = "$Eingabe"
$File_a = ("$File").TrimStart("System.Windows.Forms.TextBox, Text: ")
$File_neu = $File_a + "\passwort.txt"
$password = Read-Host Bitte Passwort eingeben -AsSecureString
$password | ConvertFrom-SecureString | Out-File $File_neu
