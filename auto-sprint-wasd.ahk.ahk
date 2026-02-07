#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv
SendMode Input
SetKeyDelay, -1, -1

movementKeys := ["w","a","s","d"]

AnyKeyDown() {
    global movementKeys
    for k in movementKeys {
        if GetKeyState(movementKeys[k], "P")
            return true
    }
    return false
}

~*w::
~*a::
~*s::
~*d::
    if !GetKeyState("Shift","P")
        Send {Shift down}
return

~*w up::
~*a up::
~*s up::
~*d up::
    if !AnyKeyDown()
        Send {Shift up}
return
