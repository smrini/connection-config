# connection-config

This repository contains configuration files that fix the Terminal connection issues with the Proxy on Ubuntu machines at my school. 
Don't use it unless you are from my school almata.cat

## Repository Structure

- **Proxy-ON/**: Contains files to set up the proxy connection
- **Proxy-OFF/**: Contains files to remove the proxy configuration

## Usage

If you have a similar problem, modify the files (`environment` and `apt.conf`) to suit the proxy host used by your organization before executing the patch.

### Setting up the proxy connection
To set up the proxy connection, follow these steps:
1. Navigate to the Proxy-ON folder:
```bash
cd Proxy-ON
```
2. Change the permissions on the file named `script.sh` using the command:
```bash
chmod 777 script.sh
```
3. Execute the file with sudo privileges:
```bash
sudo ./script.sh
```

### Removing the proxy configuration
If you need to remove the proxy settings:
1. Navigate to the Proxy-OFF folder:
```bash
cd Proxy-OFF
```
2. Change the permissions on the file named `script.sh` using the command:
```bash
chmod 777 script.sh
```
3. Execute the removal script with sudo privileges:
```bash
sudo ./script.sh
```

**Note:** You must be in the same directory as the script first; in other words, you have to be inside the downloaded folder where the patch files are located.

### Manual Configuration

The files can also be modified manually instead of using the patch, by using these commands:

```bash
sudo nano /etc/environment
sudo nano /etc/apt/apt.conf
```
