# connection-config

This folder contains scripts and configuration files to set up proxy settings for Ubuntu machines at Almata school.

## Files

- **script.sh**: Main shell script that copies the configuration files to their proper locations in the system
- **environment**: Configuration file for system-wide environment variables related to proxy settings
- **apt.conf**: Configuration file for APT package manager to use the proxy

## Usage

To set up the proxy configuration for terminal use, ensure you are in the Proxy-ON directory, then:

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

The script copies the `environment` file to `/etc/environment` and the `apt.conf` file to `/etc/apt/apt.conf`, setting up your Ubuntu system to use the school's proxy for internet connectivity.

This effectively returns your Ubuntu system to its default network configuration without proxy settings.

# Note

These configuration files are specifically designed for Almata school's network. If you're using this in a different environment, you'll need to modify the proxy settings to match your organization's requirements.

### Manual Configuration

The files can also be modified manually instead of using the patch, by using these commands:

```bash
sudo nano /etc/environment
sudo nano /etc/apt/apt.conf
```
