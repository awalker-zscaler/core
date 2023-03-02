Function Invoke-Header {
    [CmdletBinding()]
    param(
        [Parameter()]
        [string]$ScriptName
    )
    Write-Host "`n  ZSCALER " -ForegroundColor Cyan -NoNewline
    Write-Host "FED-PSGOV" -NoNewline
    Write-Host " Backup and Restore Utility" -ForegroundColor Red
}
