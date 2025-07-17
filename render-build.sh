#!/bin/bash
pip install -r requirements.txt
cd frontend && npm install && npm run build
mkdir -p ../static
cp -r dist/* ../static/
