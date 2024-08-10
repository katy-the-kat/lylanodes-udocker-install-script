# Lylanodes Udocker Install Script

This repository provides a simple bash script to install `udocker` on systems where Docker cannot run, such as PRoot or certain containerized environments. The script also includes steps to create a user with the username `user` if it does not already exist.

## Why Use This Script?

In environments where Docker cannot be directly installed or used, such as in PRoot-based environments or certain restricted Docker containers, `udocker` serves as a viable alternative. This script simplifies the process of setting up `udocker` and ensures that it is ready to use in such scenarios.

## Usage

### Prerequisites

- Root privileges on the system where the script will be run.

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/katy-the-kat/lylanodes-udocker-install-script.git
   cd lylanodes-udocker-install-script
   ```

2. Run the script as root (or you are already root because you are using a proot):
   ```bash
   sh ./setup-me-up_via.sh
   ```

To use udocker. do `su user` and do `udocker`. it should work. and try `udocker run ubuntu:22.04`

### Supported Environments

This script is designed for use in environments where Docker cannot be directly used, including:

- **PRoot-based systems:** Where traditional Docker cannot run.
- **Docker containers with restricted permissions:** Where `docker` commands are unavailable or unsupported.

## Contributions

Contributions are welcome! Please open an issue or submit a pull request with any improvements or additional features you would like to see.
