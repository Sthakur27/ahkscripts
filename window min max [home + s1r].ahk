c2() {
	WinGet minmax, MinMax,% currentWindow
		switch minmax {
			case  0 : winminimize,% currentWindow
			case -1 : winrestore, % currentWindow
					  winactivate,% currentWindow
		}
}

c3() {
	WinGet minmax, MinMax,% currentWindow
		switch minmax {
			case  0 : 
				Send {LWin down}
				Sleep 100
				Send {Up}
				Sleep 100
				Send {LWin up}
			case -1 :
				Send {LWin down}
				Sleep 100
				Send {Down}
				Sleep 100
				Send {LWin up}
		}
}

changeWindowSize(shouldMax){
	if(shouldMax){
		Send {LWin down}
		Sleep 100
		Send {Up}
		Sleep 100
		Send {LWin up}
	} else {
		Send {LWin down}
		Sleep 100
		Send {Down}
		Sleep 100
		Send {LWin up}
	}
}

isMaxed = 0

;toggleWindowMax() {
;	Static isMaxed := 0 
;	isMaxed := !isMaxed 
;	changeWindowSize(isMaxed)
;	;c3()
;}

Home::
	toggleWindowMax() {
	isMaxed := !isMaxed 
	changeWindowSize(isMaxed)
}

~XButton1 & ~LButton:: 
	toggleWindowMax2() {
	isMaxed := !isMaxed 
	changeWindowSize(isMaxed)
}


;!j::
;k::
;Send {LWin down}
;Sleep 100
;Send {Up}
;Sleep 100
;Send {LWin up}
;return

;j::
;Send {LWin down}
;Sleep 100
;Send {Down}
;Sleep 100
;Send {LWin up}
;return
