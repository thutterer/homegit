# Define your main Vim server name
export MY_VIM_SERVER_NAME="MY_VIM"

# Simple function to open a file in the main Vim instance
# Requires the parent Vim instance to be running with the assigned server name.
# Usage: v <filename>
v() {
    local file_to_open="$1"

    if [ -z "$file_to_open" ]; then
        echo "Usage: v <filename>"
        return 1
    fi

    # Check if a Vim server with the specified name is running
    if vim --serverlist | grep -q "$MY_VIM_SERVER_NAME"; then
        # If the server is found, open the file using --remote-silent.
        # This will open the file in the *current* Vim window if the buffer
        # already exists, or in a new split otherwise.
        vim --servername "$MY_VIM_SERVER_NAME" --remote-silent "$file_to_open"
    else
        # If the server is not found, launch a new Vim instance with the server name
        # This ensures future `v` calls will find it.
        vim --servername "$MY_VIM_SERVER_NAME" "$file_to_open"
    fi
}

