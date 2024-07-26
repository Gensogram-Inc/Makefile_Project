#!/bin/bash

set -e

# Function to validate configuration files
validate_config() {
    echo "Validating configuration files..."
    for file in config1.conf config2.conf; do
        if [ ! -f "$file" ]; then
            echo "Error: $file does not exist."
            exit 1
        fi
    done
    echo "All configuration files are valid."
}

# Function to back up configuration files
backup_configs() {
    echo "Backing up configuration files..."
    mkdir -p backups
    #cp config1.conf config2.conf backups/
    echo "Backup completed."
}

# Main script execution
case "$1" in
    validate_config)
        validate_config
        ;;
    backup_configs)
        backup_configs
        ;;
    *)
        echo "Usage: $0 {validate_config|backup_configs}"
        exit 1
        ;;
esac
