#Requires AutoHotkey v2.0
#SingleInstance Force
SetWorkingDir A_ScriptDir

; 🚀 RAlt as Function Layer
RAlt & w::Send("{Up}")
RAlt & a::Send("{Left}")
RAlt & s::Send("{Down}")
RAlt & d::Send("{Right}")

RAlt & q::Send("{Home}")
RAlt & e::Send("{End}")

RAlt & r::Send("^Left")      ; Move one word left
RAlt & t::Send("^Right")     ; Move one word right

RAlt & f::Send("{Del}")
RAlt & Backspace::Send("{Backspace}")

RAlt & j::Send("{PgUp}")
RAlt & k::Send("{PgDn}")

RAlt & u::Send("^z")         ; Undo
RAlt & i::Send("^y")         ; Redo

RAlt & `;::Send("{Esc}")     ; Quick Escape
