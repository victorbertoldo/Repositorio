Dim oShell

strCommand = "%comspec% /k"
strCP = "xcopy /S /E /Y"
strProfile = "%userprofile%"
strDestiny = "\<pastadestino>\"

Do

	Set oShell = WScript.CreateObject ("WScript.Shell")
		'BKP QlikSense
		oShell.run strCommand & " " & strCP & " " & strProfile & "\Documents\Qlik\Sense\Apps\*.* " & strProfile & strDestiny & "QlikSense & exit",0,false
		oShell.run strCommand & " " & strCP & " " & strProfile & "\Documents\" & Chr(34) & "Arquivos do Outlook" & Chr(34) & "\*.* " & strProfile & strDestiny & " && exit",0,false
		'BKP Estrutura do BI (ETL, STAGE, DW, ETC)
		oShell.run strCommand & " " & strCP & " " & "C:\BI\* " & strProfile & strDestiny & "& exit",0,false
		
	Msgbox "Copia realizada",vbOK,""
	Set oShell = Nothing
	WScript.Sleep 10000000
Loop
