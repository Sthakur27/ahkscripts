;this script will open AHK's key history
;press some keys and see if they appear in the window
;press F5 to refresh (to show recently pressed keys)
#InstallKeybdHook
#InstallMouseHook
#KeyHistory 500 ;default 40, max 500
KeyHistory