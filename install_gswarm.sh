#!/bin/bash

echo "📦 Updating packages..."
sudo apt update -y && sudo apt install wget git tar -y

echo "⬇️ Downloading Go..."
wget https://go.dev/dl/go1.22.6.linux-amd64.tar.gz

echo "📂 Extracting Go to /usr/local..."
sudo tar -C /usr/local -xzf go1.22.6.linux-amd64.tar.gz

echo "🔧 Setting up Go PATH..."
echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> ~/.bashrc
source ~/.bashrc

echo "✅ Go version:"
go version

echo "🚀 Installing gswarm..."
go install github.com/Deep-Commit/gswarm/cmd/gswarm@latest

echo "✅ gswarm installed at: $HOME/go/bin/gswarm"

echo "🔄 Reloading PATH..."
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

echo "📌 Verifying gswarm installation..."
gswarm --version || echo "❌ gswarm installation failed. Please check PATH or Go install."

echo "✅ Done! You can now run gswarm from terminal."
