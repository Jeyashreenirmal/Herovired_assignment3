#!/bin/bash

# Variables
BACKUP_DIR="/root/backups"
DATE=$(date +%F)
SERVER_NAME="nginx"
CONFIG_DIR="/etc/nginx"
DOC_ROOT="/usr/share/nginx/html"
BACKUP_FILE="$BACKUP_DIR/${SERVER_NAME}_backup_$DATE.tar.gz"

# Create backup
tar -czf $BACKUP_FILE $CONFIG_DIR $DOC_ROOT

# Verify backup integrity
echo "Verifying $BACKUP_FILE..."
tar -tzf $BACKUP_FILE
