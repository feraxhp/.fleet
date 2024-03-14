# ~\.fleet\settings.ps1
(@(& '~/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='~/.Fleet/themes/ferax.omp.json' --print) -join "`n") | Invoke-Expression
Import-Module Terminal-Icons
Set-PSReadLineOption -PredictionViewStyle ListView
New-Alias -Name cl -Value clear
New-Alias -Name py -Value python
New-Alias -Name edit -Value fleet
function mkcd {
  param($dir_name)
  New-Item -ItemType Directory -Name $dir_name -Force
  Set-Location $dir_name
}
function bd { Set-Location .. }
function cmp {
  param($dir1, $dir2)
  if ((Get-FileHash -Path $dir1).Hash -ne (Get-FileHash -Path $dir2).Hash) {
      "Los archivos son diferentes"
  } else {
    "Los archivos son iguales"
  }
}