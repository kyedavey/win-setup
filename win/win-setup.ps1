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
    Write-Host "Removing $($software)..."
        Get-AppxPackage -Name "*$($software)*" -AllUsers | Remove-AppxPackage -AllUsers
}