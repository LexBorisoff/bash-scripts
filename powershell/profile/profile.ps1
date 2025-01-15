function prompt {
  $time = Get-Date -Format "[hh:mm tt]"
  $fullPath = Get-Location
  
  $branch = git branch --show-current 2>$null
  if ($branch) {
    $branch = " ($branch)"
  }
	
  Write-Host ""
  Write-Host $time -ForegroundColor DarkGray -NoNewline
  Write-Host $branch -ForegroundColor DarkYellow
  Write-Host $fullPath -ForegroundColor Blue
  Write-Host "$" -ForegroundColor DarkYellow -NoNewline
  
  return " "
}
