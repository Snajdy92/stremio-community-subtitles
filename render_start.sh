#!/bin/sh
echo "Starting Database Init..."
python run.py init-db

echo "Creating Roles..."
python run.py create-roles

echo "Starting Server..."
hypercorn --bind 0.0.0.0:10000 run:app
