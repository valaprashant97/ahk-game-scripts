#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv
SendMode Input
SetKeyDelay, -1, -1

autoSprint := true  ; default ON

F8::
autoSprint := !autoSprint
if (!autoSprint)
{
    Send {Shift up}
    ToolTip Auto Sprint: OFF
}
else
{
    ToolTip Auto Sprint: ON
}
SetTimer, RemoveToolTip, -1000
return

RemoveToolTip:
ToolTip
return

CheckShiftRelease() {
    global autoSprint
    if (!autoSprint)
        return

    if !GetKeyState("w","P")
    && !GetKeyState("a","P")
    && !GetKeyState("s","P")
    && !GetKeyState("d","P")
    {
        Send {Shift up}
    }
}

*w::
if (autoSprint)
    Send {Shift down}
Send {w down}
return

*w up::
Send {w up}
CheckShiftRelease()
return

*a::
if (autoSprint)
    Send {Shift down}
Send {a down}
return

*a up::
Send {a up}
CheckShiftRelease()
return

*s::
if (autoSprint)
    Send {Shift down}
Send {s down}
return

*s up::
Send {s up}
CheckShiftRelease()
return

*d::
if (autoSprint)
    Send {Shift down}
Send {d down}
return

*d up::
Send {d up}
CheckShiftRelease()
return
