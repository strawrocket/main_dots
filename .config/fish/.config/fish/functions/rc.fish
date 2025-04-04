function rc
    # Check if the system is macOS
    if uname -s | grep -iq darwin
        # If the system is macOS, run the Bash script
        bash /Users/abeersud/rclone_sync.sh $argv
    else
        bash ~/.local/share/bin/rclone_sync.sh
    end
end
