
OctoEverywhere server as a Home Assistant add-on

# About
[OctoEverywhere](https://octoeverywhere.com/) is an open source project for remotely controlling and monitoring 3D printers. Specifically for Bambu Lab, this project allows remote monitoring and control of their printers when their "Handy App" can't be used because the printer has been configured to be in "LAN Only mode" and "Developer mode", which are required in order to use third party slicers, such as Orca Slicer. 

For some manufacturers it is required to install an external service that will be a bridge between the printer and the OctoEverywhere cloud service. Home Assistent can be a great option for hosting that service.  

Currently supported printers are from Bambu Lab and Elegoo. 

This project is not affiliated with OctoEverywhere but it is using their official Docker image and just modifying it a little bit so it works as a Home Assistant add-on.

# Pre-Requisite
You will need a OctoEverywhere account in order to use their cloud service. If you don't already have one then please use this link: https://octoeverywhere.com/?ref=KKNXKL to register, which will grant me their referral benefits, whatever they might be.

# Installation

1. Click here to add this repository to your Home Assistant add-ons list, if you haven't already done so:  
  [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fekutner%2Fhass-addons)

2. Refresh your browser.
3. Find the "OctoEverywhere" add-on and click the "INSTALL" button.
4. Configure the add-on and click on "START".

# Configuration
Make sure to configure the add-on before starting it.  
If you are using a Elegoo printer only the IP of the printer is required.  
If you are using a **Bambu Lab printer** you **MUST** also provide the access code (from the LAN Only menu on the printer) and serial number. Click on "Show unused optional fields" to show the fields for entering those numbers.

# Connecting to OctoEverywhere
After configuring and starting the add-on go the the "Log" page of the add-on and if everything went well you should see a QR code printed in there. Scan the code with your phone and login to your OctoEverywhere account in order to connect the server you just installed to your OctoEverywhere account.