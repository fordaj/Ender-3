# Octoprint Configuration

### Preparation
- Download and install [Etcher](https://www.balena.io/etcher/)
- Download [Octoprint OS image](https://octoprint.org/download/)
- Micro SD card with sufficient memory plugged into PC/Mac

### Setup remote login
1. Write Octoprint OS to micro SD card using Etcher
2. Add your network information to [octopi-wpa-supplicant.txt](octopi-wpa-supplicant.txt) and copy edited file into the root folder on the new drive "boot"
3. Insert micro SD card into pi, plug in and power on
4. Get IP address from router
5. In client terminal, add a new IP alias "printer##" to the list
```
sudo nano /etc/hosts
```
6. In client terminal, run "ssh pi@printer##" and login with password "raspberry"

### Password, SSH keys, Hostnames
1. Change password
```
passwd
```
2. Change the hostname from "octoprint" to printer##
```
sudo nano /etc/hostname
sudo nano /etc/hosts
```
3. Generate key pair. Save in a file you'll know the name of (ex. /home/pi/.ssh/myLaptop), and if you prefer, enter a passphrase
```
ssh-keygen
```
4. Logout, and then copy the host key to the client
```
logout
...
ssh-copy-id pi@printer##
```
5. Reboot the pi
```
ssh pi@printer##
...
sudo reboot
```

### Octoprint Setup
1. Follow the setup prompt, with a username and password login
2. Change printer name accordingly