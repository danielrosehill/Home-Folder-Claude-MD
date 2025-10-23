# Repository Design

## Purpose

This repository exists to version control `~/CLAUDE.md` - the home folder configuration file that provides instructions to Claude Code when working on system administration tasks.

## How It Works

### The Problem

Git tracks symlinks as text files containing the symlink path, which doesn't work well with GitHub. The original approach used a symlink from this repo to `~/CLAUDE.md`, but that wouldn't display properly on GitHub.

### The Solution

This repo uses a **bidirectional sync workflow** with helper scripts and a Git hook:

1. **CLAUDE.md** - The actual file stored in the repo and synced to GitHub
2. **pull-claude.sh** - Copies from `~/CLAUDE.md` → repo (when you edit the home folder version)
3. **push-claude.sh** - Copies from repo → `~/CLAUDE.md` (when you edit the repo version)
4. **pre-commit hook** - Automatically runs `push-claude.sh` before every commit

### Workflow

#### If you edit ~/CLAUDE.md:
```bash
./pull-claude.sh  # Copy changes into repo
git add CLAUDE.md
git commit -m "Update CLAUDE.md"
git push
```

#### If you edit the repo's CLAUDE.md:
```bash
# Just commit - the pre-commit hook automatically syncs to ~/CLAUDE.md
git add CLAUDE.md
git commit -m "Update CLAUDE.md"  # Triggers push-claude.sh automatically
git push
```

### Files

- **CLAUDE.md** - The actual configuration file (committed to repo)
- **pull-claude.sh** - Manual sync from home to repo (gitignored)
- **push-claude.sh** - Manual/automatic sync from repo to home (gitignored)
- **.git/hooks/pre-commit** - Runs push-claude.sh before each commit (local only)
- **.gitignore** - Excludes the sync scripts from version control

## Benefits

- CLAUDE.md displays properly on GitHub
- Both locations stay in sync
- Can edit from either location
- Pre-commit hook prevents forgetting to sync
- Simple, transparent workflow
