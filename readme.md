# 🚀 FastNav — Smart Typing & Navigation Layer with AutoHotkey

Hi, I’m **nuwandev** — a developer obsessed with faster workflows, clean layouts, and making the most out of simple gear.

I use a full-size office keyboard, but I wanted the **efficiency of a 60% keyboard**, without sacrificing anything. So I built a smart solution using **AutoHotKey v2**:
A custom **function layer** using `RAlt` as a modifier, giving me **instant access** to navigation, editing, and productivity shortcuts — all from the home row.

> No hardware modding. Just pure software and muscle memory.

---

## 💡 Why FastNav?

* 🧠 **Think like a pro**: Minimal finger movement = faster code and less fatigue.
* 🎯 **Custom combos**: Arrow keys, word jumps, delete, undo/redo, and more.
* 🎮 **Gaming-style layout**: Uses `WASD` and nearby keys — feels intuitive.
* 🛠️ **100% customizable**: Add your own shortcuts or expand the layer.

---

## 🎹 Key Bindings (Hold `RAlt` as FN)

| **Key Combo**               | **Action**            | **Description**           |
| --------------------------- | --------------------- | ------------------------- |
| `RAlt + W/A/S/D`            | ↑ ← ↓ →               | Arrow keys                |
| `RAlt + Shift + W/A/S/D`    | Shift + Arrows        | Select text by character  |
| `RAlt + R/T`                | Ctrl + Left/Right     | Jump word left/right      |
| `RAlt + Shift + R/T`        | Shift + Ctrl + Arrows | Select by word            |
| `RAlt + Q / E`              | Home / End            | Line start / end          |
| `RAlt + F`                  | Delete                | Delete next character     |
| `RAlt + Backspace`          | Backspace             | Delete previous character |
| `RAlt + J / K`              | Page Up / Down        | Scroll up / down          |
| `RAlt + U / I`              | Undo / Redo           | Ctrl+Z / Ctrl+Y           |
| `RAlt + ;`                  | Escape                | Quick Escape              |

---

## 🧩 How It Works

This script treats your `Right Alt` key like a **custom Fn key**. Hold it down and press nearby keys to trigger smart actions. It’s especially useful on:

* Full-size or office keyboards
* Laptops without good arrow key positions
* Typists and coders who want hands-on-home-row speed

You’ll never need to leave the typing zone again.

---

## 📝 Script: `FastNav.ahk`

```ahk name=FastNav.ahk
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
```

---

## 📦 Installation

1. Install [AutoHotkey v2](https://www.autohotkey.com/download/)
2. Download or clone this repo
3. Run `FastNav.ahk` — it lives in your tray while active
4. Add it to startup for a permanent upgrade

---

## 🛠️ Customize Your Layer

Feel free to edit the script and add:

* Brackets, quotes, or symbol shortcuts
* Window snapping or tab management
* Media controls or clipboard tools

---

## ⚡ Final Thoughts

This isn't just about pretending to have a 60% keyboard.
It’s about turning **any keyboard** into a **power tool** for coding, writing, and getting things done faster.

---

**Made with 🔥 by [nuwandev](https://github.com/nuwandev)**
Your keyboard doesn’t limit you — your setup does. Fix it.
