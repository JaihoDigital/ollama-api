#!/bin/bash
echo "Starting Ollama server..."

# Start Ollama in background
ollama serve &

# Wait for server to start
sleep 15

# Pull models (these will be available for your app)
echo "Pulling gemma3:1b model..."
ollama pull gemma3:1b

#echo "Pulling phi3:mini model..."  
#ollama pull phi3:mini

echo "Models ready! Ollama API is now running..."

# Keep the container running
wait
