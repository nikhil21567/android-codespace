# Android Codespace - Zero Commands 📱

> **Bus Codespace kholo, port 8006 pe click karo, Android phone mil jayega. NO commands.**

## Kaise Use Karna Hai (3 Steps)

### Step 1: Codespace banao
- https://github.com/nikhil21567/android-codespace
- **Code** → **Codespaces** → **Create codespace on main**
- Machine: **2-core / 8GB RAM**

### Step 2: Wait (2-3 min)
Auto: Docker image pull + Android 14 boot

### Step 3: Phone kholo
- **PORTS** tab → port **8006** → **"📱 Open Android Phone"** pe click

**Bas. No commands.**

## Architecture

Redroid (Android-in-Docker) + noVNC web wrapper on port 8006.

## ⚠️ Performance Note

Codespace me **KVM nahi** hai, to Android **laggy** hoga (similar to Tiny10). Light apps (Chrome, Settings) OK chalenge, heavy games hang karenge.

## Features
- ✅ Real Android 14
- ✅ Touch via mouse
- ✅ Install APKs via ADB
- ✅ Browser-based, no install