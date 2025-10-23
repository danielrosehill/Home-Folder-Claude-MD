# Home-Folder-Claude-MD

Version control repository for the home folder CLAUDE.md configuration file.

## Overview

This repository provides version control for `~/CLAUDE.md`, which contains hierarchical Claude Code configuration that applies to all Claude Code executions under the home directory.

## How It Works

The `CLAUDE.md` file in this repository is a symbolic link to `~/CLAUDE.md`. This means:
- Editing `CLAUDE.md` in this repo automatically updates `~/CLAUDE.md`
- Changes to `~/CLAUDE.md` are immediately reflected in this repo
- You can commit and push changes to version control from this repo
- Claude Code works seamlessly with the symlink

## Workflow

1. **Edit the file**: Open `CLAUDE.md` in this repository or edit `~/CLAUDE.md` directly
2. **Commit changes**: Use git to commit your changes from this repository
3. **Push to GitHub**: Push commits to maintain version history

## Benefits

- Full version control history of your Claude Code configuration
- Easy rollback to previous configurations
- Ability to track changes over time
- Can edit from either location (repo or home folder)
