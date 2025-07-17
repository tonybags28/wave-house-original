#!/bin/bash
set -e

echo "=== Installing Python dependencies ==="
pip install -r requirements.txt

echo "=== Building React frontend ==="
cd frontend
npm install
npm run build

echo "=== Copying built files to static directory ==="
cd ..
mkdir -p static
cp -r frontend/dist/* static/

echo "=== Build completed successfully ==="

