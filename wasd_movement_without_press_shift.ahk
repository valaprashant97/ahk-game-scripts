#NoEnv
SendMode Input
SetKeyDelay, 10, 10
SetBatchLines, -1

global sprinting := false

CheckRelease() {
    if !GetKeyState("w","P")
    && !GetKeyState("a","P")
    && !GetKeyState("s","P")
    && !GetKeyState("d","P")
    {
        Send {Shift up}
        sprinting := false
    }
}

~*w::
if (!sprinting) {
    Send {Shift down}
    sprinting := true
}
return

~*w up::
CheckRelease()w
return

~*a::
if (!sprinting) {
    Send {Shift down}
    sprinting := true
}
return

~*a up::
CheckRelease()
return

~*s::
if (!sprinting) {
    Send {Shift down}
    sprinting := true
}
return

~*s up::
CheckRelease()
return

~*d::
if (!sprinting) {
    Send {Shift down}
    sprinting := true
}
return

~*d up::
CheckRelease()
return
