changeDevice(deviceNum){
	if(deviceNum){
		;alt o
		Send, !o
	} else {
		;alt p
		Send, !p
	}
}


;!l::Run C:\Windows\System32\DisplaySwitch.exe /extend
;!I::Run C:\Windows\System32\DisplaySwitch.exe /internal


!k::
toggleAudioDevice() {
	Static deviceNum := 0 
	deviceNum := !deviceNum 
	;MsgBox % deviceNum
	changeDevice(deviceNum)
}