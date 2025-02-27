#!/bin/bash

# Define files to symlink
dotfiles=(
  "$HOME/.vimrc"
  "$HOME/.zshrc"
  "$HOME/.bashrc"
  # Add other config files here
)

# Create dotfiles directory if it doesn't exist
mkdir -p "$HOME/dotfiles"

# Loop through each file and create symlink
for dotfile in "${dotfiles[@]}"; do
  filename=$(basename "$dotfile")
  
  # Check if file exists before copying
  if [ -f "$dotfile" ]; then
    # Copy original file to repository if it doesn't exist there
    if [ ! -f "$HOME/dotfiles/$filename" ]; then
      cp "$dotfile" "$HOME/dotfiles/$filename"
      echo "Copied $filename to repository"
    fi
    
    # Create backup of original file
    mv "$dotfile" "$dotfile.backup"
    
    # Create symlink from repository to original location
    ln -s "$HOME/dotfiles/$filename" "$dotfile"
    echo "Created symlink for $filename"
  fi
done
