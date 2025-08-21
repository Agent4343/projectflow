# 🚀 ProjectFlow Transfer Guide
## How to Move ProjectFlow to Another Computer

There are several ways to transfer your complete ProjectFlow application to another computer. Choose the method that works best for you:

## 📁 Method 1: USB Drive / External Storage (Recommended)

### **Step 1: Copy the Portable Folder**
1. Copy the entire `ProjectFlow-Portable` folder to a USB drive, external hard drive, or cloud storage
2. The folder is approximately 50MB and contains everything needed

### **Step 2: Transfer to New Computer**
1. Plug in your USB drive to the new computer
2. Copy the `ProjectFlow-Portable` folder to any location (Desktop, Documents, etc.)
3. Follow the setup instructions in the folder

## ☁️ Method 2: Cloud Storage (OneDrive, Google Drive, Dropbox)

### **Upload from Current Computer:**
1. Upload the `ProjectFlow-Portable` folder to your cloud storage:
   - **OneDrive**: Drag folder to OneDrive folder or upload via web
   - **Google Drive**: Upload folder via web interface
   - **Dropbox**: Drag to Dropbox folder or upload via web

### **Download on New Computer:**
1. Sign in to your cloud storage on the new computer
2. Download the `ProjectFlow-Portable` folder
3. Extract if needed and follow setup instructions

## 📧 Method 3: Email (For Smaller Transfers)

### **Create ZIP Archive:**
1. Right-click the `ProjectFlow-Portable` folder
2. Select "Compress" or "Send to > Compressed folder"
3. Email the ZIP file to yourself (may need to split if too large)

### **On New Computer:**
1. Download the ZIP from your email
2. Extract the `ProjectFlow-Portable` folder
3. Follow setup instructions

## 🌐 Method 4: Network Transfer

### **If Both Computers Are on Same Network:**
1. Enable file sharing on current computer
2. Access shared folder from new computer
3. Copy the `ProjectFlow-Portable` folder
4. Follow setup instructions

## 💾 Method 5: Direct File Transfer Tools

### **Using Tools Like:**
- **Windows**: Nearby Sharing
- **Mac**: AirDrop
- **Cross-platform**: Send Anywhere, WeTransfer

1. Use your preferred file transfer tool
2. Send the `ProjectFlow-Portable` folder
3. Receive on new computer and follow setup instructions

---

## 🔧 Setup on New Computer (Same for All Methods)

### **Prerequisites:**
1. **Install Node.js** (if not already installed)
   - Download from: https://nodejs.org
   - Install version 18 or higher

2. **Install Serve Package** (one-time setup)
   ```bash
   npm install -g serve
   ```

### **Start ProjectFlow:**
1. Navigate to the `ProjectFlow-Portable` folder
2. **Windows**: Double-click `start-projectflow.bat`
3. **Mac/Linux**: Run `./start-projectflow.sh` in terminal
4. **Manual**: Run `serve out -p 3000` in terminal

### **Access Application:**
- Open browser to: http://localhost:3000
- Your complete ProjectFlow with Mind Mapping is ready!

---

## 📋 What's Included in Transfer

✅ **Complete Application**: All pages and features
✅ **Mind Mapping Feature**: Interactive visual brainstorming
✅ **Project Management**: Kanban boards, tasks, timelines
✅ **Focus Tools**: Pomodoro timer, goal tracking
✅ **Dashboard**: Analytics and project overview
✅ **Startup Scripts**: Easy launch on Windows/Mac/Linux
✅ **Documentation**: Complete setup instructions

---

## 🆘 Troubleshooting Transfer Issues

### **File Too Large for Email:**
- Use cloud storage or USB drive instead
- Split into smaller ZIP files if needed

### **Cloud Storage Sync Issues:**
- Ensure complete upload/download before transferring
- Check internet connection stability

### **Permission Issues (Mac/Linux):**
```bash
chmod +x start-projectflow.sh
```

### **Node.js Not Installed:**
- Download and install from nodejs.org
- Restart terminal after installation

### **Port Already in Use:**
```bash
serve out -p 8080
```
(Use port 8080 instead of 3000)

---

## 💡 Pro Tips

1. **Keep Original**: Don't delete from current computer until confirmed working on new one
2. **Test First**: Run on new computer to ensure everything works
3. **Bookmark**: Save http://localhost:3000 as bookmark for easy access
4. **Backup**: Keep a copy of the portable folder as backup

Your ProjectFlow application is completely self-contained and will work identically on the new computer!
