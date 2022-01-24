# Prompt

Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons
Import-Module PSReadLine
Import-Module PSFzf

# Prompt Sets

Set-PoshPrompt Paradox
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Load prompt config

function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }

$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'bruno.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression


# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
function gosana  { set-location 'C:\Users\bruno\Documents\Bruno' }
function root { set-location '~' }
function native { set-location 'C:\Users\bruno\Documents\Bruno\ReactNative' }
