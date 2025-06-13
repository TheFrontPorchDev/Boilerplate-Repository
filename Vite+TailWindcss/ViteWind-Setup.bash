#!/bin/bash

echo "🌬️ Let's scaffold a Vite + Tailwind project!"
read -p "📦 Project name: " project_name

# Exit if project name is empty
if [[ -z "$project_name" ]]; then
  echo "❌ Project name cannot be empty."
  exit 1
fi

echo -e "\n🎨 Choose your setup:"
echo "1) Vanilla JS"
echo "2) Vanilla TS"
echo "3) React JS"
echo "4) React TS"
read -p "👉 Enter a number (1-4): " choice

# Map choice to Vite template
case $choice in
  1) template="vanilla";;
  2) template="vanilla-ts";;
  3) template="react";;
  4) template="react-ts";;
  *) echo "❌ Invalid option. Please choose between 1-4."; exit 1;;
esac

echo -e "\n🚧 Scaffolding your project..."
pnpm create vite@latest "$project_name" -- --template "$template" || exit 1
cd "$project_name" || exit 1

echo "📦 Installing dependencies..."
pnpm install

echo "🎯 Adding Tailwind CSS and friends..."
pnpm install -D tailwindcss postcss autoprefixer
pnpm dlx tailwindcss init -p

# Ensure src directory and style.css exist
mkdir -p src

style_file="src/style.css"
tailwind_import='@import "tailwindcss";'

# Add Tailwind import to style.css
if [[ ! -f "$style_file" ]]; then
  echo "$tailwind_import" > "$style_file"
else
  grep -qxF "$tailwind_import" "$style_file" || \
  sed -i.bak "1s|^|$tailwind_import\n|" "$style_file" && rm "$style_file.bak"
fi

# Link the stylesheet in index.html
index_file="index.html"
if [[ -f "$index_file" ]]; then
  sed -i.bak '/<title>.*<\/title>/a\
  <link rel="stylesheet" href="src/style.css" />
' "$index_file" && rm "$index_file.bak"
else
  echo "⚠️ Warning: index.html not found. Please manually link style.css."
fi

# Launch VS Code
code . --reuse-window

echo -e "\n✅ All set! Your project \"$project_name\" is ready!"
echo "👉 To start developing: \033[1mpnpm run dev\033[0m"
