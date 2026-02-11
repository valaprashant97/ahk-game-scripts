#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv
SendMode Input
SetKeyDelay, -1, -1

$e::
Send {Shift down}
while GetKeyState("e","P")
{
    ; W + Shift
    Send {w down}
    Sleep 50
    Send {w up}
    if !GetKeyState("e","P")
        break

    ; D + Shift
    Send {d down}
    Sleep 50
    Send {d up}
    if !GetKeyState("e","P")
        break

    ; S + Shift
    Send {s down}
    Sleep 50
    Send {s up}
    if !GetKeyState("e","P")
        break

    ; A + Shift
    Send {a down}
    Sleep 50
    Send {a up}
}
Send {Shift up}
return