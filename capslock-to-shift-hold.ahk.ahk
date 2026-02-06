#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv
SendMode Input
SetKeyDelay, -1, -1

*CapsLock::
Send {Shift down}
return

*CapsLock up::
Send {Shift up}
return
