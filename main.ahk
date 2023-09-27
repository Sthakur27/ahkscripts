#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

XButton1::   ; regular action
  send, {XButton1}
return
XButton2::   ; regular action
  send, {XButton2}
return
#Include volume [s1w].ahk
#Include audiodevice [g6].ahk
#Include cyclebackground [g4].ahk
#Include displaytoggle [g3].ahk
#Include toggle icons and task bar [. + s2r].ahk
#Include virtual display [numpad + s2wheel].ahk
#Include window min max [home + s1r].ahk
#Include windowcycle [g2 + s1l].ahk
