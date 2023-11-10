#!/bin/bash
#
# Run script
# ----------
#

echo "  _____                     _       _           _         ____            _                 "
echo " | ____|__ _ ___ _   _     / \   __| |_ __ ___ (_)_ __   / ___| _   _ ___| |_ ___ _ __ ___  "
echo " |  _| / _\` / __| | | |   / _ \ / _\` | '_ \` _ \| | '_ \  \___ \| | | / __| __/ _ \ '_ \` _ \ "
echo " | |__| (_| \__ \ |_| |  / ___ \ (_| | | | | | | | | | |  ___) | |_| \__ \ ||  __/ | | | | |"
echo " |_____\__,_|___/\__, | /_/   \_\__,_|_| |_| |_|_|_| |_| |____/ \__, |___/\__\___|_| |_| |_|"
echo "                 |___/                                          |___/                       "
echo ""

echo ".-------------------------------------------------."
echo "|                                                 |"
echo "|     Easy Admin System - Installation script     |"
echo "|                                                 |"
echo "'-------------------------------------------------'"
echo "> easyadmin-system"
echo ""

echo " → Initializing GIT submodules..."
git submodule init

echo " → Updating GIT submodules..."
git submodule update

echo " → Building Docker containers with Compose..."
docker-compose build

echo " → Starting all services..."
docker-compose up -d

echo " → Done."
echo ""
echo "You can list running containers with:"
echo "docker ps --all"
