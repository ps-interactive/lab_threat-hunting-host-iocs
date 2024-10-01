echo “VGhpcyBpcyB5b3VyIHNlY29uZCBmbGFn” > C:\flag2.txt
$Trigger = New-ScheduledTaskTrigger -Daily -At "6:00 am"
$Action = New-ScheduledTaskAction -Execute "PowerShell" -Argument “C:\flag2.txt”
$Principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -LogonType ServiceAccount
Register-ScheduledTask -TaskName “Flag” -Trigger $Trigger -Action $Action -Principal $Principal
