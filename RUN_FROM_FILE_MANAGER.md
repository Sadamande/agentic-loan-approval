# 🚀 How to Run App from File Manager

Complete guide to launch the Agentic AI Loan Approval System without using terminal!

---

## 🖥️ **OPTION 1: Using File Manager (Easiest)**

### **Linux/Ubuntu:**

1. **Open File Manager**
   - Click the folder icon on taskbar
   - Or press: `Super` (Windows key) + `E`

2. **Navigate to the folder**
   - Path: `/home/ubuntu/Desktop/demo/`
   - Or click Desktop in sidebar → open `demo` folder

3. **Find these files:**
   - ✅ `launch_app.sh` (recommended - easiest!)
   - ✅ `start.sh` (alternative)

4. **Double-click `launch_app.sh`**
   - If asked "Run" or "Display", click **"Run"**

5. **Application starts!** 🎉
   - Terminal window opens (FastAPI)
   - Browser opens (Streamlit at http://localhost:8501)
   - Application is ready to use!

---

### **Windows:**

1. **Open File Explorer**
   - Press: `Win + E`
   - Or click file manager icon

2. **Navigate to folder**
   - Path: `C:\Users\[YourName]\Desktop\demo\`

3. **Find file:**
   - ✅ `launch_app.bat` (Windows launcher)

4. **Double-click `launch_app.bat`**
   - Or right-click → "Run as Administrator"

5. **Application starts!** 🎉
   - Command prompt opens (FastAPI)
   - Browser opens (Streamlit)
   - Ready to use!

---

### **Mac:**

1. **Open Finder**
   - Press: `Cmd + Space` → type "Finder"

2. **Navigate to folder**
   - Path: `/Users/[YourName]/Desktop/demo/`

3. **Find file:**
   - ✅ `launch_app.sh` (Mac launcher)

4. **Double-click or Right-click → "Open With" → "Terminal"**

5. **Application starts!** 🎉

---

## 📌 **OPTION 2: Create Desktop Shortcut**

### **For Easy Access:**

#### **Windows:**
1. In File Manager, go to your `demo` folder
2. Right-click `launch_app.bat`
3. Select: **"Send To" → "Desktop (create shortcut)"**
4. Now you have a shortcut on Desktop!
5. Double-click anytime to launch 🚀

#### **Linux/Mac:**
1. In File Manager, go to `demo` folder
2. Right-click `launch_app.sh`
3. Create shortcut or copy to Desktop
4. Double-click to launch 🚀

---

## 🎯 **OPTION 3: Create Custom Launcher (Advanced)**

### **Windows - Create a Shortcut:**

1. Right-click on Desktop → **"New" → "Shortcut"**
2. Enter target:
   ```
   C:\Users\[YourName]\Desktop\demo\launch_app.bat
   ```
3. Name it: `Loan Approval App`
4. Click "Finish"
5. Now you have a custom launcher on Desktop! ✅

### **Linux - Create a .desktop File:**

Create file `~/Desktop/loan-app.desktop`:
```
[Desktop Entry]
Type=Application
Name=Agentic AI Loan Approval
Exec=/home/ubuntu/Desktop/demo/launch_app.sh
Icon=application-x-executable
Terminal=true
```

Then just double-click to launch! ✅

---

## 📋 **FILES TO USE**

| File | OS | Use |
|------|-----|-----|
| `launch_app.sh` | Linux/Mac | ✅ Recommended - one-click launch |
| `start.sh` | Linux/Mac | Alternative launcher |
| `launch_app.bat` | Windows | ✅ Recommended - one-click launch |

---

## ✅ **What Happens When You Launch:**

```
You double-click launch_app.bat/sh
        ↓
Script starts running
        ↓
Terminal/Command Prompt opens
        ↓
FastAPI service starts (Port 8000)
        ↓
Streamlit service starts (Port 8501)
        ↓
Browser automatically opens to http://localhost:8501
        ↓
Application is ready to use! 🎉
```

---

## 🌐 **After Launch - What You'll See:**

### **Terminal/Command Prompt:**
```
Agentic AI Intelligent Loan Approval System
Starting Application...

✅ FastAPI is running (Port 8000)
🚀 Starting Streamlit UI (Port 8501)
🌐 Opening browser in a moment...

[Streamlit startup messages]
```

### **Browser Window:**
```
🏦 Agentic AI Intelligent Loan Approval System

📝 Single Application | 📊 Batch Processing | 📈 Analytics

[Application interface loads]
```

---

## 🔧 **Troubleshooting**

### **Problem: Double-click doesn't do anything**

**Solution 1 (Linux):**
- Right-click file → Properties → Permissions → Check "Execute"
- Or: `chmod +x /home/ubuntu/Desktop/demo/launch_app.sh`

**Solution 2 (Windows):**
- Right-click → "Run as Administrator"
- Or: Open Command Prompt in that folder and type: `launch_app.bat`

### **Problem: "Python not found"**

**Solution:**
- Install Python from https://www.python.org
- Make sure to check "Add Python to PATH" during installation
- Restart your computer

### **Problem: Port already in use**

**Solution:**
- Close any other instances of the app
- Or use different ports (edit the script)

### **Problem: Browser doesn't open**

**Solution:**
- Manually go to: http://localhost:8501
- Check if FastAPI is running: http://localhost:8000/health

---

## 📁 **File Locations**

### **Linux/Mac:**
```
/home/ubuntu/Desktop/demo/launch_app.sh
```

### **Windows:**
```
C:\Users\[YourName]\Desktop\demo\launch_app.bat
```

---

## 🎯 **Quick Reference**

| Action | Steps |
|--------|-------|
| **Launch (Linux)** | Open File Manager → Desktop/demo → Double-click `launch_app.sh` |
| **Launch (Windows)** | Open File Manager → Desktop/demo → Double-click `launch_app.bat` |
| **Launch (Mac)** | Open Finder → Desktop/demo → Double-click `launch_app.sh` |
| **Create Desktop Icon** | Right-click file → "Send to Desktop" or copy to Desktop |
| **Manual Launch** | Open terminal/cmd in folder → type: `./launch_app.sh` (Linux/Mac) or `launch_app.bat` (Windows) |

---

## ✨ **Best Practice: Create Desktop Shortcut**

1. Use File Manager to navigate to `/Desktop/demo/`
2. Right-click `launch_app.sh` or `launch_app.bat`
3. Create shortcut
4. Move shortcut to Desktop
5. Now you can launch the app with just **2 clicks** from Desktop! 🚀

---

## 🎉 **You're All Set!**

The application is now ready to launch from File Manager anytime!

Just navigate to the folder and double-click the launcher. That's it! ✅

---

**Need help?** Check troubleshooting section above or refer to QUICK_START.md

