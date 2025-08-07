#!/usr/bin/env pwsh

param (
    [int]$Volume
)

$wshShell = New-Object -ComObject wscript.shell
1..50 | ForEach-Object { $wshShell.SendKeys([char]174) } # Volume down
1..($Volume / 2) | ForEach-Object { $wshShell.SendKeys([char]175) } # Volume up