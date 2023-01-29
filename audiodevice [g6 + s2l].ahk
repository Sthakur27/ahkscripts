changeDevice(deviceNum){
	if(deviceNum){
		;this is sending alt + o
		Send, !o
	} else {
		;this is sending alt + p
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


XButton1 & LButton::
toggleAudioDevice2() {
	Static deviceNum := 0 
	deviceNum := !deviceNum 
	;MsgBox % deviceNum
	changeDevice(deviceNum)
}