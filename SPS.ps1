function Start-Sleep($seconds) {
    $doneDT = (Get-Date).AddSeconds($seconds)
    while($doneDT -gt (Get-Date)) {
        $secondsLeft = $doneDT.Subtract((Get-Date)).TotalSeconds
        $percent = ($seconds - $secondsLeft) / $seconds * 100
        Write-Progress -Activity "Sleeping" -Status "Sleeping..." -SecondsRemaining $secondsLeft -PercentComplete $percent
        [System.Threading.Thread]::Sleep(500)
    }
    Write-Progress -Activity "Sleeping" -Status "Sleeping..." -SecondsRemaining 0 -Completed
}
# Adds progress bar for wait timer 

Write-Output "Checking for PSTools..."
$PSToolsPath = Test-Path ./PSTools/
if ($PSToolsPath) {
    Write-host "You have PSTools installed.`nStarting script"
        ./PSTools/pssuspend.exe GTA5.exe
        Start-Sleep -s 8
        ./PSTools/pssuspend.exe GTA5.exe -r
        # Check if PSTools exists then uses pssuspend to suspend the GTAV process for 8 seconds then resumes it
} else {
    Write-Host "You still need to download PSTools and extract it to the folder of this script https://docs.microsoft.com/en-us/sysinternals/downloads/pstools"

    $confirmation = Read-Host "Would you like to open this link in your browser?"
    if ($confirmation -eq 'y') {
        Start-Process  
        exit
    }
}