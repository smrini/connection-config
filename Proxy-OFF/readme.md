# connection-config

This folder contains a script to remove proxy settings that were previously configured by the Proxy-ON script.

## Usage

To remove the proxy configuration for the terminal, ensure you are in the Proxy-OFF directory, then:

1. Change the permissions on the file named `script.sh` using the command:
```bash
chmod 777 script.sh
```

2. Execute the file with sudo privileges:
```bash
sudo ./script.sh
```

**Note:** You must be in the same directory as the script first; in other words, you have to be inside the downloaded folder where the patch files are located.

## What the Script Does

The script removes or resets proxy-related settings from:
- System environment variables in `/etc/environment`
- APT package manager configuration in `/etc/apt/apt.conf`

This effectively returns your Ubuntu system to its default network configuration without proxy settings.

## When to Use

Use this script when:
- You no longer need to use the school's proxy
- You're connecting to a different network
- You're experiencing issues with the proxy configuration and need to reset it

### Manual Configuration

The files can also be modified manually instead of using the patch, by using these commands:

```bash
sudo nano /etc/environment
sudo nano /etc/apt/apt.conf
```
