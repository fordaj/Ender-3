# Octoprint
This README details the setup and configuration of Octoprint on a Raspberry Pi 3 and up.

# Raspberry Pi Setup

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




# Octoprint Setup
1. Follow the setup prompt, with a username and password login
2. Keep Access Control Enabled
3. Disable Anonymous Usage Tracking
4. Test host & port, and Enable Connectivity Check
5. Enable Plugin Blacklist Processing
6. Name the printer and model
7. Width and Depth: 235mm, Height: 250mm
8. Nozzle Diameter: 1.2mm
3. In the dashboard, check the "Auto-connect on server startup" box
### Appearance
1. Change "Title" to the name of the printer
2. Change the color however you'd like



# Plugins
Settings > Plugin Manager > Get more... > Search for specific plugins

### Continuous Print
1. Search "Continuous Print" and install
2. Reboot

### Cost estimator
1. Search "Cost estimator" and install
2. Reboot
3. Configure cost based on volumetric flow rate **NEEDS UPDATED**

### Firmware Updater
1. Search "Firmware Updater" and install
2. Reboot
3. Follow the settings in the [repository documentation's](https://github.com/OctoPrint/OctoPrint-FirmwareUpdater#lpc1768-boards) LPC1768 section
- Run the following command (if not already shown in the repository)
```
sudo chmod 777 /media/usb0
```
4. Settings > Firmware Updater > Wrench Icon:
- Flash Method: LPC1768
- Path to firmware folder: 
```
/media/usb/
```
- Clicking "Test" should show "Path is valid". If "Path is not writeable" is shown, repeat steps 3 and 4.
- Check "Enable Navbar Icon" box
5. Reboot before using

### GitFiles
1. Search "OctoPrint-GitFiles" and install
2. Reboot
3. Set up SSH for cloning into Github repository
```
ssh pi@printer##
```
```
ssh-keygen
<enter for id_rsa>
<enter passphrase if desired>
cat ~/.ssh/id_rsa.pub
```
- Copy everything except "pi@printer##"
4. Add the SSH key to your github account
- Github.com > Account icon > Settings > SSH and GPG Keys > New SSH key
- Name: "printer##"
- Key: Paste the key copied from step 3
5. Octoprint > Settings > GitFiles
- Paste the SSH url into the URL field
- Rename "gitfiles" to "Products"

### Navbar Temperature Plugin
1. Search "Navbar Temp" and click "Install"
2. Reboot before using
3. Once complete, go to "Settings > Navbar Temperature Plugin > SoC name to display" and change it to "Pi"

### OctoPod Notifications
1. Search "OctoPod" and install
2. Reboot
3. Display progress: 100%
4. Set all other degrees/times to 0

### OctoPrint-PrintTimeGenius
1. Search "OctoPrint-PrintTimeGenius" and install
- Note: Files preprocessed by OctoPrint-PrintTimeGenius will be marked with a yellow star
2. Reboot before using

### Themeify
1. Search "Themeify" and install
2. Reboot
3. Choose a theme (discoranged!) in Settings > Themeify > Theme





