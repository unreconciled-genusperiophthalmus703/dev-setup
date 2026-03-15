#!/usr/bin/env bash
set -e

echo "Running Ubuntu integration test"


bash scripts/linux/ubuntu.sh git


if git --version > /dev/null 2>&1; then
  echo "Git installed successfully"
else
  echo "Git installation failed"
  exit 1
fi