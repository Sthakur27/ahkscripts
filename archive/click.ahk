#NoEnv
SendMode Input
SetWorkingDir, % A_ScriptDir
#SingleInstance, Force

F8::
    toggle:=1
    while(toggle)
    {
        sleep, 1000
        CoordMode, Mouse, Screen
        Click, 390, 925
        sleep, 1000
        Click 850, 650
    }
Return

F9:: toggle:=!toggle