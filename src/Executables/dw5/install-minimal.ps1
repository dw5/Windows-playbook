Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install git
scoop update
scoop bucket add extras
scoop install notepadplusplus wget curl
scoop install crystaldiskinfo
