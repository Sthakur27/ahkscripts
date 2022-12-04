#NoEnv
SendMode Input
SetWorkingDir, % A_ScriptDir
#SingleInstance, Force

F8::
    toggle:=1
    while(toggle)
    {
        sleep, 500
        send, enter
        sleep, 500
        send, down
        sleep, 500
        send, down
        sleep, 500
        send, enter
    }
Return

F9:: toggle:=!toggle