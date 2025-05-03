# 🚀 SmartFN — Custom Modifier Layer with AutoHotkey

Hi, I’m **nuwandev** — a developer obsessed with faster workflows, clean layouts, and making the most out of simple gear.

I use a full-size office keyboard, but I wanted the **efficiency of a 60% keyboard**, without sacrificing anything. So I built a smart solution using **AutoHotKey v2**:
A custom **function layer** using `RAlt` as a modifier, giving me **instant access** to navigation, editing, and productivity shortcuts — all from the home row.

> No hardware modding. Just pure software and muscle memory.

---

## 💡 Why SmartFN?

* 🧠 **Think like a pro**: Minimal finger movement = faster code and less fatigue.
* 🎯 **Smart modifiers**: Shift/Ctrl + keys work just like real arrows/select/jump.
* 🎮 **Gaming-style layout**: Uses `WASD` and nearby keys — feels intuitive.
* 🛠️ **100% customizable**: Add your own shortcuts or expand the layer.

---

## 🎹 Key Bindings (Hold `RAlt` as FN)

| **Key Combo**            | **Action**      | **Description**                 |
| ------------------------ | --------------- | ------------------------------- |
| `RAlt + W/A/S/D`         | ↑ ← ↓ →         | Arrow keys                      |
| `Shift + RAlt + W/A/S/D` | Shift + ↑ ← ↓ → | Select with arrows              |
| `Ctrl + RAlt + A/D`      | Ctrl + ← / →    | Word jump left/right            |
| `RAlt + Q / E`           | Home / End      | Line start / end                |
| `RAlt + F`               | Delete          | Delete next character           |
| `RAlt + Backspace`       | Backspace       | Delete previous character       |
| `RAlt + J / K`           | Page Up / Down  | Scroll up / down                |
| `RAlt + U / I`           | Undo / Redo     | Ctrl+Z / Ctrl+Y                 |
| `RAlt + ;`               | Escape          | Quick Escape                    |
| `Ctrl + RAlt`            | Toggle CapsLock | Enable true CapsLock (optional) |

---

## 🧩 How It Works

This script treats your `Right Alt` key like a **custom Fn key**, and supports modifier-aware logic. Hold it down and press nearby keys to trigger smart actions, like:

* `RAlt + A` → Left arrow
* `Shift + RAlt + A` → Select left
* `Ctrl + RAlt + A` → Word jump left

Ergonomic. Predictable. Fast.

It’s especially useful on:

* Full-size or office keyboards
* Laptops without good arrow key positions
* Typists and coders who want hands-on-home-row speed

---

## 📝 Script: `SmartFN.ahk`

```ahk
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
```

---

## 📦 Installation

1. Install [AutoHotkey v2](https://www.autohotkey.com/download/)
2. Download or clone this repo
3. Run `SmartFN.ahk` — it lives in your tray while active
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
