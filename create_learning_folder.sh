#!/bin/bash

# Created by pownkumar (Founder of Korelium - Where fantasy meets the reality)
# This script creates the folder structure for coding projects inside the "code" directory.
# Bash scripting is a way to automate commands in the terminal by writing them into a file.
# It helps save time on repetitive tasks like file/folder management.
# To run a bash script:
# 1. Save this script as create_learning_folder.sh
# 2. Make the script executable: chmod +x create_learning_folder.sh
# 3. Execute it: ./create_learning_folder.sh

root="$HOME/dev-workspace"
languages=("flutter" "dart" "nodejs" "html_css" "bash" "hackathon" "other_languages")
subfolders=("playground" "main" "archive"  "notes")

# Create root folder
mkdir -p "$root"

# Create subfolders for each language
for lang in "${languages[@]}"
do
  for sub in "${subfolders[@]}"
  do
    mkdir -p "$root/$lang/$sub"
  done
done



# Create a README.md file in the root folder with folder explanations
cat <<EOT > "$root/README.md"
# Code Folder Structure

This folder contains all programming projects organized by language.

Folder descriptions:

- playground: Folder for daily practice, experiments, learning exercises.
- main: Stable, production-ready projects or apps.
- archive: Old or paused projects to keep workspace clean.
- notes: Learning materials, cheatsheets, commands, concepts.

Languages:
- flutter: Projects and practice in flutter language/framework
- dart: Projects and practice in dart language/framework
- nodejs: Projects and practice in nodejs language/framework
- html_css: Projects and practice in html_css language/framework
- bash: Projects and practice in bash language/framework
- hackathon: Projects created during hackathons
- other_languages: Projects and practice in other_languages language/framework

EOT

echo "Folder structure and README.md created inside \"$root/\""
echo 
echo "Folders Structure: "
tree $root  #This will show the tree structure of the created folders  make sure to install "tree"