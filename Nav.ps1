Add-Type -AssemblyName System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'Navigator'
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Local Users"
$Label.Location = New-Object System.Drawing.Point(0,10)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)
$ComboBox = New-Object System.Windows.Forms.ComboBox
$ComboBox.Width = 300
$Users = Get-LocalUser
Foreach ($User in $Users)
{
$ComboBox.Items.Add($User.SamAccountName);
}
$ComboBox.Location = New-Object System.Drawing.Point(60,10)
$main_form.Controls.Add($ComboBox)
$main_form.ShowDialog()