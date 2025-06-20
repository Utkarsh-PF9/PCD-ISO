#!/bin/bash

# Optional: Check and install Python3 if needed
# if ! command -v python3 &> /dev/null; then
#     echo "Python3 is required but not installed."
#     echo "Installing Python3..."
#     sudo apt update && sudo apt install -y python3
# fi

# Run system update
sudo apt update

# ⚠️ Run the UI binary script (ensure path is correct and executable)
if [[ -x /usr/local/bin/pcd-iso-ui ]]; then
    /usr/local/bin/pcd-iso-ui
else
    echo "Error: /usr/local/bin/pcd-iso-ui not found or not executable."
    exit 1
fi

# After exit, show message
echo "Custom UI has exited."
echo "You now have access to the normal Ubuntu terminal."
echo "Type 'custom-ui' to restart the management interface."

exit 0
