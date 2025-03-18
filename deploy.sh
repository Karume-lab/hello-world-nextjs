#!/bin/bash

# Exit if any command fails
set -e

# Change to the correct project directory
cd /home/ubuntu/projects/hello-world-nextjs || exit 1

# Pull the latest code
git pull origin main

# Install dependencies
npm install

# Build the Next.js project
npm run build

# Restart the app using PM2
pm2 restart hello-world-nextjs || pm2 start npm --name "hello-world-nextjs" -- start
