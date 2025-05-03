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

| **Key Combo**      | **Action**      | **Description**                 |
| ------------------ | --------------- | ------------------------------- |
| `RAlt + W/A/S/D`   | ↑ ← ↓ →         | Arrow keys                      |
| `RAlt + Q / E`     | Home / End      | Line start / end                |
| `RAlt + R / T`     | Ctrl + ← / →    | Jump one word left / right      |
| `RAlt + F`         | Delete          | Delete next character           |
| `RAlt + Backspace` | Backspace       | Delete previous character       |
| `RAlt + J / K`     | Page Up / Down  | Scroll up / down                |
| `RAlt + U / I`     | Undo / Redo     | Ctrl+Z / Ctrl+Y                 |
| `RAlt + ;`         | Escape          | Quick Escape                    |
| `Ctrl + RAlt`      | Toggle CapsLock | Enable true CapsLock (optional) |

---

## 🧩 How It Works

This script treats your `Right Alt` key like a **custom Fn key**. Hold it down and press nearby keys to trigger smart actions. It’s especially useful on:

* Full-size or office keyboards
* Laptops without good arrow key positions
* Typists and coders who want hands-on-home-row speed

You’ll never need to leave the typing zone again.

---

## 📝 Script: `FastNav.ahk`

```ahk
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

RAlt & r::Send("^Left")      ; Word left
RAlt & t::Send("^Right")     ; Word right

RAlt & f::Send("{Del}")
RAlt & Backspace::Send("{Backspace}")

RAlt & j::Send("{PgUp}")
RAlt & k::Send("{PgDn}")

RAlt & u::Send("^z")         ; Undo
RAlt & i::Send("^y")         ; Redo

RAlt & `;::Send("{Esc}")     ; Escape

; Optional: Ctrl + RAlt toggles real CapsLock
^RAlt::SetCapsLockState "Toggle"
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
