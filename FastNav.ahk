#Requires AutoHotkey v2.0
#SingleInstance Force
SetWorkingDir A_ScriptDir

; 🚀 Disable all unwanted RAlt combinations
RAlt::Return                                   ; Disable standalone RAlt
RAlt & ::Return                                ; Disable all undefined RAlt combinations

; 🚀 RAlt as Function Layer Modifier
RAlt & w:: {                                   ; RAlt + W = Arrow Up
    if GetKeyState("Shift", "P")               ; If Shift is held
        Send("+{Up}")                          ; Select Up
    else
        Send("{Up}")                           ; Move Up
}
RAlt & a:: {                                   ; RAlt + A = Arrow Left
    if GetKeyState("Shift", "P")               ; If Shift is held
        Send("+{Left}")                        ; Select Left
    else
        Send("{Left}")                         ; Move Left
}
RAlt & s:: {                                   ; RAlt + S = Arrow Down
    if GetKeyState("Shift", "P")               ; If Shift is held
        Send("+{Down}")                        ; Select Down
    else
        Send("{Down}")                         ; Move Down
}
RAlt & d:: {                                   ; RAlt + D = Arrow Right
    if GetKeyState("Shift", "P")               ; If Shift is held
        Send("+{Right}")                       ; Select Right
    else
        Send("{Right}")                        ; Move Right
}

; Home/End Keys
RAlt & q::Send("{Home}")                        ; RAlt + Q = Home
RAlt & e::Send("{End}")                         ; RAlt + E = End

; Word Navigation and Selection
RAlt & r:: {                                   ; RAlt + R = Word Left
    if GetKeyState("Shift", "P")               ; If Shift is held
        Send("^+{Left}")                       ; Select Word Left
    else
        Send("^{Left}")                        ; Move Word Left
}
RAlt & t:: {                                   ; RAlt + T = Word Right
    if GetKeyState("Shift", "P")               ; If Shift is held
        Send("^+{Right}")                      ; Select Word Right
    else
        Send("^{Right}")                       ; Move Word Right
}

; Delete/Backspace
RAlt & f::Send("{Del}")                         ; RAlt + F = Delete
RAlt & Backspace::Send("{Backspace}")           ; RAlt + Backspace = Backspace

; Page Up/Page Down
RAlt & j::Send("{PgUp}")                        ; RAlt + J = Page Up
RAlt & k::Send("{PgDn}")                        ; RAlt + K = Page Down

; Undo/Redo
RAlt & u::Send("^z")                            ; RAlt + U = Undo (Ctrl + Z)
RAlt & i::Send("^y")                            ; RAlt + I = Redo (Ctrl + Y)

; Quick Escape
RAlt & `;::Send("{Esc}")                        ; RAlt + ; = Escape
