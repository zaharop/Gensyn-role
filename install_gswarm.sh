#!/bin/bash

echo "📦 Updating packages..."
sudo apt update -y && sudo apt install wget git tar -y

echo "⬇️ Downloading Go..."
wget https://go.dev/dl/go1.22.6.linux-amd64.tar.gz

echo "📂 Extracting Go to /usr/local..."
sudo tar -C /usr/local -xzf go1.22.6.linux-amd64.tar.gz

echo "🔧 Setting up Go PATH..."
echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> ~/.bashrc
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
source ~/.bashrc

echo "✅ Go version:"
go version

echo "🚀 Installing gswarm..."
go install github.com/Deep-Commit/gswarm/cmd/gswarm@latest

echo "🔍 Checking if gswarm binary exists..."
if [ -f "$HOME/go/bin/gswarm" ]; then
    echo "✅ gswarm installed at: $HOME/go/bin/gswarm"
else
    echo "❌ gswarm binary not found. Installation may have failed."
    exit 1
fi

echo "📌 Verifying gswarm is accessible from terminal..."
if ! command -v gswarm &> /dev/null; then
    echo "⚠️ gswarm command not found in PATH."
    echo "👉 You can still run it using:"
    echo "$HOME/go/bin/gswarm"
    echo "💡 To fix this, ensure your PATH includes:"
    echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc
    source ~/.bashrc
else
    gswarm --version
    echo "✅ gswarm is ready to use!"
fi

echo "✅ Installation complete."

