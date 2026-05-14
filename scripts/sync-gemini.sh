#!/bin/bash
# Gemini Sync Script - Hogwarts Castle
# Automates the sync of project configuration and memories.

REPO_DIR="/home/brent/ai"
cd "$REPO_DIR" || exit

echo "--- Pulling latest changes from GitHub ---"
git pull origin main

echo "--- Syncing Global Memory (Local -> Repo) ---"
cp ~/.gemini/GEMINI.md "$REPO_DIR/docs/GLOBAL_GEMINI.md"

echo "--- Committing changes ---"
git add .
git commit -m "Gemini Sync: $(date +'%Y-%m-%d %H:%M:%S')"

echo "--- Pushing to GitHub ---"
git push origin main

echo "--- Sync Complete! ---"
