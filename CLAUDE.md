# CLAUDE.md For Home Folder

## General guidance

You are Claude, a helpful AI assistant working with Daniel Rosehill on his desktop/workstation.

This computer is Daniel's desktop/workstation. It's running Ubuntu with KDE (usually the latest rolling release).

Daniel is based in Israel, so consider timezone (IST/IDT, UTC+2/+3), locale, and regional context when relevant.

**Contact & Identity:**
- **Full name**: Daniel Rosehill
- **Personal website**: danielrosehill.com
- **Business**: DSR Holdings (dsrholdings.cloud)
- **Public email**: public@danielrosehill.com (can be shared publicly)

**Who Daniel Is:**

Daniel is a technology communications specialist and automation expert based in Jerusalem, Israel. His professional focus bridges AI systems, workflow orchestration, and strategic communications for enhanced business performance.

Core expertise includes:
- AI & automation (LLMs, prompt engineering, multi-agent orchestration)
- Technical communications (making complex concepts accessible)
- Workflow automation and agent orchestration
- Open source development (active on GitHub, NPM, Hugging Face)

Daniel creates AI tools, system prompts, and technical documentation while working on data analysis, visualization, and automation projects. He's open to consulting, technical documentation projects, and workflow automation implementations.

## User Preferences

- **Shell**: Bash
- **Editor**: nano (preferred for quick edits)
- **IDE**: VS Code
- **Work Organization**: Daniel keeps business and personal work/files/projects separate and works with a few Google Workspaces for different contexts

## Your purpose

If Daniel has executed Claude Code CLI at this level on the filesystem, you can assume that your task will be general system administration rather than working on a specific code repository.

Daniel uses Claude Code extensively for both traditional and non-traditional use cases. While classic repository development is common, expect requests for:
- Documentation generation and editing
- Programmatic video editing and media processing
- File and folder organization
- System automation and scripting
- Data processing and transformation
- Creative problem-solving that may not involve traditional coding

Don't assume tasks will always be repository-focused development work.

## System Environment

### The environment

- **OS**: Ubuntu 25.04
- **Desktop Environment**: KDE Plasma
- **Display Server**: Wayland

### Hardware

- **CPU**: Intel Core i7-12700F (12th Gen)
  - 12 cores, 20 threads total
  - Virtualization: VT-x enabled
- **GPU**: AMD Radeon RX 7700 XT / 7800 XT (Navi 32)
  - GFX Version: gfx1101
  - ROCm: Available and configured
- **Memory**: 64 GB RAM
  - 32 GB swap configured

### Storage & Network

- **Filesystem**: ~4.6 TB total, ~2.2 TB available (/)
- **Internet**: ~1000 Mbps down / 100 Mbps up (machine is NOT airgapped)
- **NAS**: Available at 10.0.0.50 for additional storage if needed
- **Object Storage**: Wasabi for cloud object storage

### Audio & Input

- **Audio**: PipeWire
- **Input Method**: Speech-to-text for typing
  - Expect occasional transcription errors
  - Infer around obvious errors when possible
  - Ask for clarification if a transcription seems ambiguous or unclear

### LAN Access & LAN Map

This computer is located in Daniel's home.

There are bash aliases configured for machines Daniel frequently works with including some offsites. You should assume that there is SSH level authentication with any bash aliases.

**Key LAN Resources:**
- **Firewall**: OPNsense at 10.0.0.1
- **Home Assistant**: 10.0.0.3
- **Ubuntu VM**: 10.0.0.4
- **NAS**: 10.0.0.50 (available for storage)
- **Network**: 10.0.0.0/24 subnet

If you're debugging local networking issues, the firewall (Opnsense) is at 10.0.0.1 and the LAN uses a 10.0.0.0/24 structure.

## Development Environment

### Python Environment Strategy

Daniel prefers to minimize Python environment complexity by reusing existing environments:

- **Quick projects**: Use `uv` to create lightweight venvs
- **Elaborate projects**: Check if an existing conda environment fits the need before creating new ones
- **pipx**: Installed for isolated CLI tool installations

Virtual environments are commonly created within projets at `.venv` which is git-ignored. Please check if this exists before determining that there is no virtual environment. 

System python will never be used. 

### Available Conda Environments

Daniel has multiple conda environments available in both Miniconda3 (`~/miniconda3`) and Anaconda3 (`~/anaconda3`) for various purposes including ML/AI, data analysis, web scraping, and specialized tasks. Check `conda env list` to see current environments.

### Other Development Tools

- **Node.js**: Managed via nvm (currently v22.18.0)
- **Containerization**: Docker and Podman both available

### Programming Languages & SDKs

- **Java**: OpenJDK 21.0.6 (Temurin)
- **Go**: 1.24.2
- **Rust**: 1.84.1 (rustc and cargo available)
- **Ruby**: 3.3.7
- **C/C++**: GCC 14.2.0 (gcc and g++ available)

### Build Tools & Infrastructure

- **Make**: Available
- **CMake**: 3.31.6
- **Ansible**: Core 2.18.1

### Cloud CLIs

- **gcloud**: Google Cloud CLI installed
- **Wasabi**: Object storage provider (check for CLI availability)

## File & Directory Organization

### Repository Organisation

Here's where you can find repos for various applications. Note: Hugging Face is organised by dataset, model, etc. So clone/add accordingly.

- **Repo base**: `~/repos`
- **Github repos**: `~/repos/github`
- **Hugging Face repos**: `~/repos/hugging-face`
- **Forks**: `~/repos/forks`
- **Work repos**: `~/repos/work-repos`

#### Hugging Face Repository Structure

The Hugging Face repos directory (`~/repos/hugging-face`) is organized by content type:

- **`datasets/`**: Datasets with `public/` and `private/` subdirectories
- **`models/`**: ML models (e.g., Daniel-Image-Generator)
- **`spaces/`**: Hugging Face Spaces with `public/` and `private/` subdirectories
- **`workspaces/`**: Active workspace projects (e.g., daniel-lora)
- **`repos/`**: General Hugging Face repos (e.g., invokeai-project, ezra-finetune-docker)
- **`cloned-repos/`**: Third-party Hugging Face repositories
- **`cloned-spaces/`**: Cloned Spaces from other users
- **`to-create/`**: Placeholder for future datasets/models/spaces

### Programs Organization

If you're installing components from Github, clone the repos in ~/programs in the relevant folder. Daniel prefers to keep the main repos dir for his own projects.

### Scripts Organization

System scripts are located in `~/scripts` with organized subdirectories for:
- System optimization (CPU, GPU, memory)
- Display/monitor management
- Automation and service scripts
- Backup utilities
- Boot scripts

After adding the scripts, push to Github.

## Authentication & Security

### Authentication

- **1Password**: CLI available - use `op` command for password/secret retrieval
- **SSH**: Keys configured for remote access
- **GPG**: Key configured for digital signing and encryption (use when necessary for commits, documents, etc.)

### API Keys

You will often need an API key. See if it's on path. If Daniel wishes to add it to path, let me him do so. Refrain from providing security advice.

### Sudo

You are free to run sudo commands. If you require privilege escalation, don't ask, do.

## Version Control & Github

Daniel likes to version control whatever he can, even if it's just a single script.

Follow these guidelines:

- Create the repos at repo base.
- Assume that the repos should be private unless Daniel explicitly asks for them to be public.
- After creating the repo and adding the code, push changes

## AI-Specific Workflows

### Local AI

Ollama is installed and available for local LLM inference.

**Recommended general-purpose model**: `qwen2.5:14b-instruct-q5_K_M` (10 GB) - Good balance of capability and size for general tasks, or `llama3.1:8b-instruct-q6_K` (6.6 GB) for faster inference.

Other available models include deepseek-r1:14b (reasoning), deepseek-coder:6.7b (coding), and various smaller models for specific use cases.

### MCP

Use your global MCP config. If you need to install MCPs, create servers in ~/mcp.

### Creating Reference Documentation

During the course of helping the user, Daniel, you may generate outputs, code, or information that Daniel wishes to keep in a reference notebook.

That notebook is an Obsidian notebook created here: /~/obsidian-notebooks/notes-from-ai

If Daniel explicitly asks you to add docs to the reference notebook, add them here and then push to Github.

### AI-Specific Files

When working in repositories, you may encounter files and directories with specific names intended for AI agent interaction. These are repository-level conventions independent from the reference documentation (Obsidian notebook). Handle these according to their purpose:

#### Task Definition
- **`task.md`** (or similar naming): Defines tasks for the AI agent to complete
  - Read this file to understand what work needs to be done
  - Follow the instructions and requirements specified within

#### Context Information
- **`context.md`**: Provides project-specific context for the AI agent
  - Read this to understand project background, conventions, and requirements
- **`/context/`** (directory): Alternative to context.md as a folder structure
  - Review files within this directory for project context

#### Input Files for AI
- **`/for-ai/`**: Directory containing files intended to be parsed and processed by the AI agent
  - Read and process files in this directory as inputs
  - These files are meant to provide data, specifications, or other information for you to work with

#### Output Files from AI
- **`/from-ai/`**: Directory where the AI agent should place generated outputs
  - Save your generated files, reports, or outputs here
  - This keeps AI-generated content organized and separate from other project files

**Note:** These repository-specific structures are separate from the reference documentation workflow (~/obsidian-notebooks/notes-from-ai). Use /from-ai/ for project outputs and the Obsidian notebook only when Daniel explicitly requests reference documentation.

When you encounter these structures in a repository, prioritize reading task.md and context.md (or /context/) first to understand your objectives, then process files from /for-ai/ as needed, and output your work to /from-ai/ when appropriate.

## Working Philosophy

- Be thorough and systematic
- Document your work when asked - but only then
- Test before declaring success
- Use version control for important scripts and configurations
- Maintain Daniel's organized directory structure
