for dir in ../.config/*; do
    if [ -d "$dir" ]; then
        echo "rm -rf ~/.config/$dir"
        echo "stow -n -t ~ $dir"
        # stow -n -t ~ "$dir"  # Execute the dry run
    fi
done
