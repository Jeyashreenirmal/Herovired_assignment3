#!/bin/bash
LOG="$HOME/system_report.log"

echo "=== $(date) ===" >> $LOG
echo "CPU and Memory usage:" >> $LOG
ps aux --sort=-%cpu | head -n 10 >> $LOG
echo "Disk usage:" >> $LOG
df -h >> $LOG
echo "" >> $LOG
