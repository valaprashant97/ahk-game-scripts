🎮 ahk-game-scripts

A collection of AutoHotkey (AHK) scripts designed for game automation, smooth movement in a game, and quality-of-life improvements.
This repository focuses on simple, lightweight, and game-friendly scripts that enhance controls without causing glitches or stuck keys.

🚀 Features

- ✅ WASD auto-sprint (Shift auto-hold)
- ✅ Smooth movement handling (no sprint glitch)
- ✅ Toggle-based scripts (ON / OFF support)
- ✅ Caps Lock to Shift remapping
- ✅ Performance-friendly & low latency
- ✅ Easy to customize and extend

📂 Scripts Included

🏃 WASD Auto Sprint
- Automatically holds Shift when pressing W / A / S / D
- Releases Shift when all movement keys are released
- Optional F8 toggle to enable or disable auto-sprint

File:`wasd-auto-sprint-toggle.ahk`

⌨️ Caps Lock → Shift (Hold)
- Caps Lock **down** → Shift down
- Caps Lock **up** → Shift up
- Useful for sprinting or holding actions in games
File:`capslock-to-shift-hold.ahk`

🛠 Requirements

- Windows OS
- [AutoHotkey v1.x](https://www.autohotkey.com/) installed

> ⚠️ These scripts are written for AutoHotkey v1, not v2.

▶️ How to Use

1️⃣ Install AutoHotkey
- Go to: https://www.autohotkey.com/
- Download AutoHotkey v1.x
- Install it normally (Next → Next → Finish)

2️⃣ Clone This Repository
Open Command Prompt or Git Bash, then run:

'git clone https://github.com/your-username/ahk-game-scripts.git'

▶️ How to Run an AutoHotkey Script

1. Make sure AutoHotkey is installed on your system.
2. Locate the `.ahk` script file.
3. Double-click the `.ahk` file  
   OR right-click → Run Script
4. The script will run in the background.
5. A green **H** icon will appear in the system tray.

🛑 How to Exit / Stop a Script

Method 1: System Tray (Recommended)
1. Look at the bottom-right corner of the screen.
2. Find the green **H** icon.
3. Right-click the icon.
4. Click **Exit**.

Method 2: Exit All Scripts
1. Right-click the green **H** icon.
2. Select Exit All Scripts.

Method 3: Task Manager (Force Stop)
1. Press Ctrl + Shift + Esc.
2. Find AutoHotkey.exe.
3. Select it and click *End Task*.

⌨️ Optional: Exit Using a Hotkey

Add the following line to any script:

```ahk
F12::ExitApp
