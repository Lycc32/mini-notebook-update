# Usage: after you have a built exe, stage it into this update site.
#   .\write_release.ps1 -ExePath 'C:\path\小笔记本.exe' -Version '1.0.3' -Notes '修复说明'
param(
  [Parameter(Mandatory = $true)][string]$ExePath,
  [Parameter(Mandatory = $true)][string]$Version,
  [string]$Notes = ''
)
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not (Test-Path -LiteralPath $ExePath)) { throw "exe missing: $ExePath" }
$relName = 'MiniNotebook_' + $Version + '.exe'
$relDir = Join-Path $root 'releases'
if (-not (Test-Path $relDir)) { New-Item -ItemType Directory -Path $relDir | Out-Null }
$dest = Join-Path $relDir $relName
Copy-Item -LiteralPath $ExePath -Destination $dest -Force
$sha = (Get-FileHash -LiteralPath $dest -Algorithm SHA256).Hash.ToLowerInvariant()
$published = (Get-Date).ToString('yyyy-MM-ddTHH:mm:ssK')
$json = @"
{
  "name": "小笔记本",
  "version": "$Version",
  "publishedAt": "$published",
  "notes": $($Notes | ConvertTo-Json),
  "file": "releases/$relName",
  "sha256": "$sha"
}
"@
[System.IO.File]::WriteAllText((Join-Path $root 'version.json'), $json + "`n", (New-Object System.Text.UTF8Encoding $false))
[System.IO.File]::WriteAllText((Join-Path $root 'version.txt'), $Version + "`r`n", (New-Object System.Text.UTF8Encoding $false))
Write-Output ("WROTE " + $dest)
Write-Output ("VERSION " + $Version)
Write-Output ("SHA256 " + $sha)
