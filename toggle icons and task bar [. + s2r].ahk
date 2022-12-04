#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


XButton1 & RButton::
HideShowTaskbar(hide := !hide)
ControlGet, HWND, Hwnd,, SysListView321, ahk_class Progman
 If HWND =
 ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW
 If DllCall("IsWindowVisible", UInt, HWND)
 WinHide, ahk_id %HWND%
 Else
 WinShow, ahk_id %HWND%
return


NumpadDot:: 
HideShowTaskbar(hide := !hide)
ControlGet, HWND, Hwnd,, SysListView321, ahk_class Progman
 If HWND =
 ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW
 If DllCall("IsWindowVisible", UInt, HWND)
 WinHide, ahk_id %HWND%
 Else
 WinShow, ahk_id %HWND%
return
   
HideShowTaskbar(action) {
   static ABM_SETSTATE := 0xA, ABS_AUTOHIDE := 0x1, ABS_ALWAYSONTOP := 0x2
   VarSetCapacity(APPBARDATA, size := 2*A_PtrSize + 2*4 + 16 + A_PtrSize, 0)
   NumPut(size, APPBARDATA), NumPut(WinExist("ahk_class Shell_TrayWnd"), APPBARDATA, A_PtrSize)
   NumPut(action ? ABS_AUTOHIDE : ABS_ALWAYSONTOP, APPBARDATA, size - A_PtrSize)
   DllCall("Shell32\SHAppBarMessage", UInt, ABM_SETSTATE, Ptr, &APPBARDATA)
}