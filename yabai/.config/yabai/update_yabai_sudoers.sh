#!/bin/bash

# Set variables
yabai_path=$(which yabai)
user_name=$(whoami)
yabai_hash=$(shasum -a 256 "$yabai_path" | awk '{print $1}')
sudoers_file="/private/etc/sudoers.d/yabai"

# Create or update the sudoers file
echo "$user_name ALL=(root) NOPASSWD: sha256:$yabai_hash $yabai_path --load-sa" | sudo tee "$sudoers_file" > /dev/null

if [ $? -eq 0 ]; then
    echo "Sudoers file updated successfully."
else
    echo "Error updating sudoers file for yabai."
    exit 1
fi

# Restart yabai and capture the exit status
echo -n "Restart yabai... "
restart_status=$(yabai --restart-service 2>&1)

# Check the exit status
if [ $? -eq 0 ]; then
    echo "yabai restarted successfully!"
else
    echo "yabai couldn't be restarted."
fi
