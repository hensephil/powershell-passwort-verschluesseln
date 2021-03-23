### Erstellt am 23.03.2021 - Philipp Hense - Zentrale IT NES ###



Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Speicherort                     = New-Object system.Windows.Forms.Form
$Speicherort.ClientSize          = New-Object System.Drawing.Point(725,232)
$Speicherort.text                = "Speicherort"
$Speicherort.TopMost             = $false
$Speicherort.icon                = ".\icon.ico"

$Eingabe                         = New-Object system.Windows.Forms.TextBox
$Eingabe.multiline               = $false
$Eingabe.text                    = "z.B. C:\temp"
$Eingabe.width                   = 673
$Eingabe.height                  = 20
$Eingabe.Anchor                  = 'top,right,bottom,left'
$Eingabe.location                = New-Object System.Drawing.Point(30,78)
$Eingabe.Font                    = New-Object System.Drawing.Font('Courier New',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Italic))
$Eingabe.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#0017ff")
$Eingabe.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Label                           = New-Object system.Windows.Forms.Label
$Label.text                      = "Bitte gebe hier den Pfad an in der das Passwort verschluesselt abgespeichert werden soll."
$Label.AutoSize                  = $true
$Label.width                     = 350
$Label.height                    = 10
$Label.Anchor                    = 'top,right,left'
$Label.location                  = New-Object System.Drawing.Point(6,15)
$Label.Font                      = New-Object System.Drawing.Font('MV Boli',12)

$abbrechen                       = New-Object system.Windows.Forms.Button
$abbrechen.text                  = "Abbrechen"
$abbrechen.width                 = 210
$abbrechen.height                = 40
$abbrechen.location              = New-Object System.Drawing.Point(116,159)
$abbrechen.Font                  = New-Object System.Drawing.Font('Tw Cen MT',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$abbrechen.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#ff0000")
$abbrechen.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#d1d1d1")
$abbrechen.Add_Click({$Speicherort.Close()})


$speichern                       = New-Object system.Windows.Forms.Button
$speichern.text                  = "Speichern"
$speichern.width                 = 210
$speichern.height                = 41
$speichern.location              = New-Object System.Drawing.Point(377,158)
$speichern.Font                  = New-Object System.Drawing.Font('Tw Cen MT',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$speichern.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#03770e")
$speichern.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#d1d1d1")

$speichern.Add_Click({$Speicherort.Close(); .\passwort-hash.lnk -Eingabe $Eingabe.Text})

$copyright                       = New-Object system.Windows.Forms.Label
$copyright.text                  = "© 2021 Philipp Hense"
$copyright.AutoSize              = $true
$copyright.width                 = 25
$copyright.height                = 10
$copyright.location              = New-Object System.Drawing.Point(10,218)
$copyright.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',7)
$copyright.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#acacac")

$Speicherort.controls.AddRange(@($Eingabe,$Label,$abbrechen,$speichern,$copyright))



[void]$Speicherort.ShowDialog()