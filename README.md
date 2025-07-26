# 🚀 GSwarm VPS Auto Installer Script

This repository provides a simple bash script to **install Go (Golang)** and the **GSwarm monitoring tool** on a **Linux VPS (Ubuntu/Debian)**.

---

## 📦 What is GSwarm?

[GSwarm](https://github.com/Deep-Commit/gswarm) is a monitoring service for blockchain peer activity with Telegram notifications.  
It prompts for your EOA address and monitors updates for your associated peers.

---

## 🔧 Features of this Script

- Installs Go (v1.22.6)
- Installs latest GSwarm binary
- Automatically updates PATH
- Ready-to-run in one shot

---

## 📁 Installation

### 1. Clone this repo (or create a file manually)

```bash
git clone https://github.com/zaharop/Gensyn-role.git
cd Gensyn-role

```
### 2. Run the install script

```bash
chmod +x install_gswarm.sh
./install_gswarm.sh


```
### 3. Verify Installation
 To check if everything is set up correctly:

 ```bash

go version
gswarm --version

```
This will:
Install Go
Set up your PATH
Install GSwarm to $HOME/go/bin
Verify installation

### 4. RUN 

```bash
gswarm

```
## 🤖 Telegram Bot Setup (Step-by-Step)
To receive notifications via Telegram, you need to set up a Telegram bot and connect it to your account:

### 1. Create a Telegram Bot:

Chat with [**@BotFather**](https://t.me/BotFather)
 on Telegram
Send 
```bash
/newbot
```
and follow the instructions
Save the bot token provided

### 2. Get Your Chat ID:

Start a chat with your new bot and send any message

Visit :
```bash
https://api.telegram.org/botYOUR_BOT_TOKEN/getUpdates
```
in your browser
Find your chat ID in the response
**For groups/channels**: Use the ChatID/ChannelID as the telegramId in the bot configuration


**Example**: If your bot token is **1234567890:ABCdefGHIjklMNOpqrsTUVwxyz**, visit:
```bash
https://api.telegram.org/bot1234567890:ABCdefGHIjklMNOpqrsTUVwxyz/getUpdates

```
### Sample Response:

```bash

{
  "ok": true,
  "result": [
    {
      "message": {
        "message_id": 2021,
        "from": {
          "id": 123456789,
          "is_bot": false,
          "first_name": "GSwarm",
          "username": "gswarm_user",
          "language_code": "en"
        },
        "chat": {
          "id": 123456789,
          "first_name": "GSwarm",
          "username": "gswarm_user",
          "type": "private"
        },
        "date": 1704067200,
        "text": "Hello bot!"
      }
    }
  ]
}

```
**Extract the Chat ID**: Look for the "chat":{"id":123456789} field. In this example, the chat ID is 123456789. This is your Telegram ID that the bot will use to send you notifications.

Note: If you get an empty result {"ok":true,"result":[]}, you may need to send a message to your bot first, then refresh the URL.

### 3. Configure GSwarm:

Run **gswarm** and follow the prompts to enter your bot token, chat ID, and EOA address



## 🔗 Linking Discord and Telegram

To link your Discord and Telegram accounts:

### 1. Get the verification code:

Go to Discord (swarm-link channel)
Type /link-telegram (this gives you a code)

### 2. Verify the code:

Go to Telegram
Type </verify (code)> (replace code with the code you received)


### This will link your Discord and Telegram accounts for seamless integration.



#                                       THANK YOU                                              





