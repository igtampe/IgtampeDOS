if WScript.Arguments.Count = 0 then
    RESULT = MSGBOX("USE: DOWNLOAD [URL] [LOCATION]" & chr(13) & chr(13) & "URL: URL Of the file" & chr(13) & chr(13) & "LOCATION: Place to save the file",0+64,"DOWNLOAD")
    RESULT = MSGBOX("Download API VERSION 1.0 BUILD 00" & chr(13) & chr(13) & "(C)2016 Igtampe, No rights Reserved." & chr(13) & chr(13) & "This program uses an Arguement API that is not mine, and the Download API Isn't either. The only thing i've done is put them together.",0+64,"DOWNLOAD")
    WScript.Quit
end if
DIM strFileURL
DIM strHDLocation
strFileURL = WScript.Arguments(0)
strHDLocation = WScript.Arguments(1)
 
' Fetch the file
    Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")
 
    objXMLHTTP.open "GET", strFileURL, false
    objXMLHTTP.send()
 
If objXMLHTTP.Status = 200 Then
Set objADOStream = CreateObject("ADODB.Stream")
objADOStream.Open
objADOStream.Type = 1 'adTypeBinary
 
objADOStream.Write objXMLHTTP.ResponseBody
objADOStream.Position = 0    'Set the stream position to the start
 
Set objFSO = Createobject("Scripting.FileSystemObject")
If objFSO.Fileexists(strHDLocation) Then 
    RESULT = MSGBOX("This file Already Exists!",0+64,"DOWNLOAD")
    WScript.Quit
end if
 
Set objFSO = Nothing
 
objADOStream.SaveToFile strHDLocation
objADOStream.Close
Set objADOStream = Nothing
End if
 
Set objXMLHTTP = Nothing
 
