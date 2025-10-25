# Home-Folder-Claude-MD

![Claude Code](https://img.shields.io/badge/Claude%20Code-Enabled-blueviolet?style=for-the-badge&logo=anthropic)

[![Claude Code Projects Index](https://img.shields.io/badge/Claude%20Code%20Projects-Index-blue?style=flat-square&logo=github)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![GitHub Master Index](https://img.shields.io/badge/GitHub-Master%20Index-green?style=flat-square&logo=github)](https://github.com/danielrosehill/Github-Master-Index)

Version control repository for the home folder CLAUDE.md configuration file.

## Overview

This repository provides version control for `~/CLAUDE.md`, which contains hierarchical Claude Code configuration that applies to all Claude Code executions under the home directory.

## How It Works

This repository maintains the canonical version of `CLAUDE.md`. Use the provided `sync.sh` script to sync changes from the repository to `~/CLAUDE.md`.

## Workflow

1. **Edit the file**: Make changes to `CLAUDE.md` in this repository
2. **Sync to home folder**: Run `./sync.sh` to copy the file to `~/CLAUDE.md`
3. **Commit changes**: Use git to commit your changes
4. **Push to GitHub**: Push commits to maintain version history

## Sync Script

The `sync.sh` script performs a one-way sync from the repository to your home folder:

```bash
./sync.sh
```

This copies `CLAUDE.md` from the repository to `~/CLAUDE.md`, ensuring your home folder always has the latest version-controlled configuration.

## Benefits

- Full version control history of your Claude Code configuration
- Easy rollback to previous configurations
- Ability to track changes over time
- Simple one-way sync workflow keeps things predictable
