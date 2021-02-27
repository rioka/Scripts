param (
  [string] $file, 
  [string] $version
)

if ([string]::IsNullOrWhiteSpace($file)) {
  Write-Error -Message "No file set!" -ErrorAction Stop
}
  
if ([string]::IsNullOrWhiteSpace($version)) {
  Write-Error -Message "No version set!" -ErrorAction Stop
}

$pattern = '(<!-- NEXT VERSION: -->)\s+(.+?)\s+(<!-- PREVIOUS VERSIONS: -->)\s+'

# $1 => <!-- NEXT VERSION: -->
# $3 => <!-- PREVIOUS VERSION: -->
# $2 => content after <!-- NEXT VERSION: -->
$replacement = "`$1`n`n`$3`n`n## ${version} `n`n`$2`n`n"
$content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)

$updated = [System.Text.RegularExpressions.Regex]::Replace($content, $pattern, $replacement, [System.Text.RegularExpressions.RegexOptions]::Singleline)
#Write-Host $updated
[System.IO.File]::WriteAllText($file, $updated)