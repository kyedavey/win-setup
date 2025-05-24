$softwareToRemove = @(
"Microsoft.MicrosoftSolitaireCollection",
"Microsoft.WindowsFeedbackHub",
"Microsoft.BingNews",
"Microsoft.BingWeather",
"Clipchamp.Clipchamp",
"Microsoft.MicrosoftStickyNotes",
"MSTeams",
"MicrosoftCorporationII.QuickAssist",
"Microsoft.MicrosoftOfficeHub",
"Microsoft.Copilot",
"Microsoft.WindowsSoundRecorder"
)

Write-Host "`nProcessing Software for Removal`n" -ForegroundColor Yellow

foreach ($software in $softwareToRemove) {
    Write-Host "Removing $($software.name)..."
        Get-AppxPackage -Name "*$($software.name)*" -AllUsers | Remove-AppxPackage -AllUsers
}