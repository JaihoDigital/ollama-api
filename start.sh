#!/bin/bash
echo "Starting Ollama server..."

# Start Ollama in background
/bin/ollama serve &

# Wait for server to start
echo "Waiting for Ollama server to start..."
sleep 20

# Test if server is running
echo "Testing server connection..."
curl -f http://localhost:11434/api/tags || echo "Server not ready yet, waiting more..."
sleep 10

# Pull models
echo "Pulling gemma2:2b model..."
/bin/ollama pull gemma3:1b

# echo "Pulling phi3:mini model..."  
# /bin/ollama pull phi3:mini

echo "Models ready! Ollama API is now running on port 11434"

# Keep the container running
wait
