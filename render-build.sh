#!/bin/bash
set -e

echo "=== Installing Python dependencies ==="
pip install -r requirements.txt

echo "=== Installing Node.js dependencies ==="
npm install --prefix frontend

echo "=== Building React production app ==="
npm run build --prefix frontend

echo "=== Build completed successfully ==="

