# 🧱 Wite-wind Setup 🌀

![license cc by 4.0](https://img.shields.io/badge/license-cc--by--4.0-red)
![pnpm orange version](https://img.shields.io/badge/pnpm-latest-orange)
![bash green](https://img.shields.io/badge/shell-bash-green)
![vite blue](https://img.shields.io/badge/vite-latest-blue)
![tailwindCSS cyan](https://img.shields.io/badge/tailwindcss-latest-cyan)

**Quickly scaffold a Vite + Tailwind CSS project** with your choice of JavaScript, TypeScript, and React!  
This interactive Bash script gets you coding in seconds 🚀🎨

---

## 📋 What it does

`wite-wind.bash` guides you through:

1. 📦 Naming your project  
2. 🎯 Picking your setup:
   - 1️⃣ Vanilla JavaScript
   - 2️⃣ Vanilla TypeScript
   - 3️⃣ React JavaScript
   - 4️⃣ React TypeScript  
3. ⚡ Scaffolding the project using Vite  
4. 🎨 Installing Tailwind CSS (without PostCSS or Autoprefixer!)  
5. 🧵 Injecting Tailwind into your CSS  
6. 🧑‍💻 Launching your project in VS Code (if available)

---

## 🛠️ Requirements

Before running the script, make sure you have:

- 💻 Visual Studio Code (with the `code` CLI)
- 🐚 Bash (macOS, Linux, or WSL for Windows)
- 🌐 Node.js (v16+ recommended)
- 📦 npm (Node.js package manager, required to install pnpm)
- 🟣 [pnpm](https://pnpm.io/) (installed via npm)

---

## 🚀 Usage

```bash
chmod +x wite-wind.bash     # Make it executable 🔓
./wite-wind.bash            # Run the script 🏁
```

## 📦 Example

Here’s what running the script looks like: 👇

```bash
$ ./wite-wind.bash
🌬️ Let's scaffold a Vite + Tailwind project!
📦 Project name: hello-world

🎨 Choose your setup:
1) Vanilla JS
2) Vanilla TS
3) React JS
4) React TS
👉 Enter a number (1-4): 2

🚧 Scaffolding your project...
📦 Installing dependencies...
🎯 Adding Tailwind CSS...

✅ All set! Your project "hello-world" is ready!
👉 To start developing: pnpm run dev
```
