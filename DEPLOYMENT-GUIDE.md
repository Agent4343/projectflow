# 🚀 ProjectFlow - Production Deployment Guide

## 📦 Building for Production

### Step 1: Build the Static Files
```bash
npm run build
```

This will create an `out/` folder with all static files ready for deployment.

### Step 2: Test the Build Locally
```bash
# Install serve globally (one-time setup)
npm install -g serve

# Serve the static files
serve out -p 3000
```

Open your browser to `http://localhost:3000` to test.

## 💻 Desktop Deployment

### For Your Current Computer

1. **Build the application:**
   ```bash
   npm run build
   ```

2. **Start the application:**
   - **Windows**: Double-click `start-projectflow.bat`
   - **Mac/Linux**: Run `./start-projectflow.sh` (make executable first: `chmod +x start-projectflow.sh`)

### Transfer to Another Computer

#### Option 1: Complete Project Transfer (Recommended for Development)
1. **Zip the entire project folder**
2. **Transfer to new computer**
3. **On new computer:**
   ```bash
   cd projectflow
   npm install
   npm run build
   ```
4. **Start the application:**
   - **Windows**: Double-click `start-projectflow.bat`
   - **Mac/Linux**: Run `./start-projectflow.sh`

#### Option 2: Static Files Only (Smaller Transfer)
1. **On current computer, build first:**
   ```bash
   npm run build
   ```

2. **Create transfer package with these files/folders:**
   ```
   📁 ProjectFlow-Portable/
   ├── 📁 out/                    (entire folder - contains the built app)
   ├── 📄 start-projectflow.bat   (Windows startup script)
   ├── 📄 start-projectflow.sh    (Mac/Linux startup script)
   └── 📄 README-PORTABLE.txt     (instructions)
   ```

3. **On new computer:**
   - Install Node.js (if not already installed)
   - Install serve: `npm install -g serve`
   - Run the appropriate startup script

## 🖥️ Running ProjectFlow

### Automatic Startup (Recommended)
- **Windows**: Double-click `start-projectflow.bat`
- **Mac/Linux**: Run `./start-projectflow.sh`

### Manual Startup
```bash
serve out -p 3000
```

### Access the Application
Open your browser to: `http://localhost:3000`

## 📁 File Structure After Build

```
ProjectFlow/
├── 📁 out/                     # Static build files (this is what gets served)
│   ├── 📄 index.html
│   ├── 📄 dashboard.html
│   ├── 📄 boards.html
│   ├── 📄 focus.html
│   ├── 📁 _next/
│   │   ├── 📁 static/
│   │   │   ├── 📁 css/
│   │   │   └── 📁 js/
│   └── 📁 boards/
├── 📄 start-projectflow.bat    # Windows startup script
├── 📄 start-projectflow.sh     # Mac/Linux startup script
└── 📄 DEPLOYMENT-GUIDE.md      # This file
```

## 🔧 Troubleshooting

### Common Issues

**1. "serve command not found"**
```bash
npm install -g serve
```

**2. Port 3000 already in use**
```bash
serve out -p 8080  # Use different port
```

**3. Permission denied on Mac/Linux**
```bash
chmod +x start-projectflow.sh
```

**4. Build fails**
- Make sure you have Node.js 18+ installed
- Run `npm install` first
- Check for any TypeScript errors

### System Requirements
- **Node.js**: Version 18 or higher
- **RAM**: 2GB minimum, 4GB recommended
- **Storage**: 500MB for the application
- **Browser**: Chrome, Firefox, Safari, or Edge (latest versions)

## 🌐 Network Access

### Local Network Access
To access ProjectFlow from other devices on your network:

```bash
serve out -p 3000 -s
```

Then access via: `http://YOUR-IP-ADDRESS:3000`

### Find Your IP Address
- **Windows**: `ipconfig`
- **Mac/Linux**: `ifconfig` or `ip addr show`

## 💾 Data Persistence

**Current Setup**: Uses mock data (resets on refresh)

**For Persistent Data**: The current version uses mock data that resets when you refresh the page. This is perfect for:
- Testing and demonstrations
- Template/example usage
- Learning the interface

If you need persistent data storage, you would need to implement a backend database.

## 🔒 Security Notes

- This is a local application running on your computer
- No external network access required
- All data stays on your local machine
- Safe for personal and business use

## 📞 Support

If you encounter any issues:
1. Check this deployment guide
2. Verify Node.js installation
3. Ensure all files were transferred correctly
4. Check browser console for errors

---

**ProjectFlow** - Modern Project Management Platform
Built with Next.js, TypeScript, and shadcn/ui
