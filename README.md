# 🐟 AquaLED Controller Firmware

Firmware for a PIC18F microcontroller written in **PicBASIC Pro**, designed to simulate natural day/night lighting cycles for aquariums and living spaces using PWM-controlled LED strips.

---

## ✨ Features

- **Automatic sunrise/sunset simulation** — gradually fades LED strips up and down over a configurable time window, mimicking natural daylight
- **4 independent PWM channels** — separate control for aquarium (3 channels) and room lighting (1 channel)
- **Manual brightness control** — override automatic mode and set each channel to a fixed brightness
- **2 internal relay timers** — schedule relay on/off times for pumps, heaters, or other devices
- **Temperature protection** — reads ambient temperature via LM75 sensor and shuts off LEDs if overheating is detected
- **Work/maintenance mode** — dedicated mode that slowly dims lights to a set working brightness and restores them when done
- **RTC timekeeping** — DS1307 real-time clock keeps accurate time even after power loss
- **Settings stored in EEPROM** — all schedules and preferences survive power cycles
- **LCD menu interface** — full 2-line LCD menu system with 6 tactile buttons for navigation

---

## 🔧 Hardware

| Component | Purpose |
|---|---|
| PIC18F microcontroller | Main CPU |
| DS1307 (I2C) | Real-time clock |
| LM75 (I2C) | Temperature sensor |
| 4x PWM outputs | LED strip control (10-bit PWM) |
| 2x Relay outputs | Pump / heater control |
| 2x16 LCD | Display and menu |
| 6 tactile buttons | Navigation (up, down, left, right, OK, maintenance) |
| EEPROM | Persistent settings storage |

---

## 🌅 How the Day/Night Cycle Works

Each of the 4 LED channels has independently configurable:

- **Sunrise** — start time, end time, start brightness → end brightness (fade up)
- **Sunset** — start time, end time, start brightness → end brightness (fade down)

The controller calculates the exact brightness every minute based on the elapsed time between the two endpoints, creating a smooth linear transition. You can configure different schedules for each channel — for example, channel 1 could peak earlier in the day than channel 3 to simulate shifting sun angles.

---

## 📋 Menu Structure

```
Main Menu
├── LED Light
│   ├── Automatic
│   │   ├── Aquarium Light
│   │   │   ├── Channel #1 → Sunrise / Sunset config
│   │   │   ├── Channel #2 → Sunrise / Sunset config
│   │   │   └── Channel #3 → Sunrise / Sunset config
│   │   └── Room Light    → Sunrise / Sunset config
│   └── Manual
│       ├── Aquarium Light → Set channels 1-3 manually
│       └── Room Light     → Set channel 4 manually
├── Internal Switches
│   ├── Switch #1 → ON time / OFF time
│   └── Switch #2 → ON time / OFF time
└── Tools
    ├── Set Time
    └── Restore Defaults
```

---

## 🔑 Button Reference

| Button | Action |
|---|---|
| UP / DOWN | Increase or decrease value |
| LEFT | Go back / exit menu |
| RIGHT | Move to next field |
| OK | Confirm / enter submenu |
| MAINTENANCE | Toggle maintenance (work light) mode |

---

## 🛠️ Building & Flashing

1. Open the `.pbp` source file in **PicBASIC Pro** compiler
2. Target: **PIC18F** (configured for internal 16MHz oscillator)
3. Compile and flash using your preferred PIC programmer (e.g. PICkit, ICD)
4. On first boot the firmware auto-initializes EEPROM with default schedules

> First boot is detected automatically — no manual EEPROM erase needed.

---

## ⚡ Hardware Specifications

| Parameter | Value |
|---|---|
| Supply voltage | 12V DC |
| Output channels | 4 independent channels |
| Output current | 2.5A per channel |
| Max output power | 120W total |
| Real-time clock | Yes (battery-backed) |
| Overheating protection | Yes (automatic LED shutoff) |
| Power consumption | Low (PIC18F sleep-capable architecture) |

---

## ⚙️ Configuration

All settings are adjusted through the LCD menu and saved to EEPROM automatically. There is no need to recompile or reflash to change schedules or brightness levels.

To restore factory defaults, navigate to **Tools → Default Settings → YES**.

---

## 📄 License

MIT — free to use, modify, and distribute.

---

*Built by [Tecomatic](https://tecomatic.rs)*
