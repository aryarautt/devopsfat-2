#!/bin/bash

echo "--- Present Working Directory ---"
pwd
echo ""

echo "--- Current User ---"
whoami
echo ""

echo "--- System Memory Usage ---"
systeminfo | grep -E "Total Physical Memory|Available Physical Memory"
echo ""

echo "--- Disk Space Usage ---"
df -h
echo ""

echo "--- Files in This Directory ---"
ls -la
echo ""

echo "--- Contents of This Script (script.sh) ---"
cat script.sh