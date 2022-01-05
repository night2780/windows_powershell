Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Set-PoshPrompt stelbent.minimal


function gotoa { set-location "~" }
new-alias cdt gotoa
function openedge {Start "msedge"}
new-alias edge openedge
function openexp {explorer .}
new-alias exp openexp
function exitpws {exit}
new-alias q exitpws
function cdlinux {cd "~\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu20.04onWindows_79rhkp1fndgsc\LocalState\rootfs\home\nighttsu"}
new-alias ubuntu cdlinux
function nvimconfig { nvim "C:\Users\DELL\AppData\Local\init.vim"}
new-alias nvimcf nvimconfig

$my= @{
    html = cd 'C:\Users\DELL\Html_Css_learning'
    py = cd 'C:\Users\DELL\python'
    user = '~'
    linux = cd "C:\Users\DELL\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu20.04onWindows_79rhkp1fndgsc\LocalState\rootfs\home\nighttsu"
     }
function themeamro {Set-PoshPrompt -Theme amro}
new-alias amro themeamro
function themepwl3 {Set-PoshPrompt -Theme powerline3}
new-alias pwl3 themepwl3
function themetwotone {Set-PoshPrompt -Theme twotone}
new-alias tt themetwotone 
function themewopian {Set-PoshPrompt -Theme wopian}
new-alias wp themewopian
function themespace {Set-PoshPrompt -Theme spaceship}
new-alias spc themespace
function stelbent {Set-PoshPrompt -Theme stelbent.minimal}
new-alias stb stelbent



# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
