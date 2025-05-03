#Requires AutoHotkey v2.0
#SingleInstance Force
SetWorkingDir A_ScriptDir

; 🔧 Utility: Get active modifiers
GetMods() {
    mods := []
    if GetKeyState("Shift") mods.Push("+")
    if GetKeyState("Ctrl") mods.Push("^")
    if GetKeyState("Alt") mods.Push("!")
    return mods.Join("")
}

; 🎯 SmartFN logic with modifiers
SendNav(key, arrow) {
    Send(GetMods() "{" arrow "}")
}

RAlt & w => SendNav("w", "Up")
RAlt & a => SendNav("a", "Left")
RAlt & s => SendNav("s", "Down")
RAlt & d => SendNav("d", "Right")

RAlt & q::Send(GetMods() "{Home}")
RAlt & e::Send(GetMods() "{End}")
RAlt & f::Send(GetMods() "{Del}")
RAlt & Backspace::Send(GetMods() "{Backspace}")
RAlt & j::Send(GetMods() "{PgUp}")
RAlt & k::Send(GetMods() "{PgDn}")
RAlt & u::Send(GetMods() "^z")
RAlt & i::Send(GetMods() "^y")
RAlt & `;::Send(GetMods() "{Esc}")

^RAlt::SetCapsLockState "Toggle"
