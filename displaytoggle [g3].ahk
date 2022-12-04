changeDisplay(extend){
	if(extend){
		Run C:\Windows\System32\DisplaySwitch.exe /extend
	} else {
		Run C:\Windows\System32\DisplaySwitch.exe /internal
	}
}


;!l::Run C:\Windows\System32\DisplaySwitch.exe /extend
;!I::Run C:\Windows\System32\DisplaySwitch.exe /internal


!l::
toggleDisplay() {
	Static toggleState := 1
	toggleState := !toggleState 
	;MsgBox % toggleState
	changeDisplay(toggleState)
}