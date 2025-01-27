#!/bin/bash

# Variables
CONTAINER_NAME="frontend-container"

echo "Entering the container to pull the latest code..."

# Execute commands inside the container
docker exec $CONTAINER_NAME bash -c "
    echo 'Pulling latest code...';
    git pull origin main;
    echo 'Building application...';
    npm install && npm run build;
"

echo "Exiting the container..."

# Restart the container
echo "Restarting the container..."
docker restart $CONTAINER_NAME

echo "Process completed. Container restarted successfully!"

