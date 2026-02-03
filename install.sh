#!/data/data/com.termux/files/usr/bin/bash

# Quick installer wrapper with better error handling

set -e

SCRIPT_URL="https://raw.githubusercontent.com/YOUR_USERNAME/termux-optimizer/main/termux-beast-optimizer.sh"
SCRIPT_NAME="termux-beast-optimizer.sh"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}Downloading Termux Beast Optimizer...${NC}"

# Download the script
if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$SCRIPT_URL" -o "$SCRIPT_NAME" || {
        echo -e "${RED}Failed to download script${NC}"
        exit 1
    }
elif command -v wget >/dev/null 2>&1; then
    wget -q "$SCRIPT_URL" -O "$SCRIPT_NAME" || {
        echo -e "${RED}Failed to download script${NC}"
        exit 1
    }
else
    echo -e "${RED}Error: Neither curl nor wget found${NC}"
    echo "Install with: pkg install curl"
    exit 1
fi

chmod +x "$SCRIPT_NAME"

echo -e "${GREEN}✓ Downloaded successfully${NC}"
echo -e "${CYAN}Starting optimization...${NC}\n"

# Run the script
bash "$SCRIPT_NAME"
