# connection-config

This repo is used to host configuration files that fix the Terminal connection issues of Ubuntu machines at my school with Proxy. Don't use it unless you are from my school almata.cat

## Usage

If you have a similar problem, modify the files (`environment` and `apt.conf`) to suit the proxy host used by your organization before executing the patch.

### Running the patch

To run the patch, follow these steps:

1. Change the permissions on the file named `script.sh` using the command:
```bash
chmod 777 script.sh
```

2. Execute the file with sudo privileges:
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
