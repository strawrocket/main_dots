#!/bin/bash  

# Define the parent directory where your app directories are located  
parent_dir="$HOME/dotfiles/.config/"  # Change this path to where your app directories currently reside  

# Check if the directory exists  
if [ ! -d "$parent_dir" ]; then  
    echo "Directory $parent_dir does not exist."  
    exit 1  
fi  

# Loop over each directory in the parent_dir  
for app_dir in "$parent_dir"/*; do  
    if [ -d "$app_dir" ]; then  
        # Extract just the directory name  
        app_name=$(basename "$app_dir")  
        
        # Define the target .config path  
        config_dir_path="$parent_dir/$app_name/.config/$app_name"  
        
        # Create the .config directory structure  
        mkdir -p "$config_dir_path"  
        
        # Move the files to the .config directory  
        # Using -mindepth 1 to exclude the app_dir itself in some contexts and prevent moving .config into itself.  
        find "$app_dir" -mindepth 1 -maxdepth 1 -type f -exec mv {} "$config_dir_path" \;  

        # Output the operation  
        echo "Moved files from $app_dir to $config_dir_path"  
    fi  
done  
