# Phase 1
 
 ### Command  
 ```
 fping -c=1 15.199.95.91 15.199.94.91 11.199.158.91 167.172.144.11 11.199.141.91
```

 ### Results
 ```
    167.172.144.11 is alive
    15.199.95.91 is unreachable
    15.199.94.91 is unreachable
    11.199.158.91 is unreachable
    11.199.141.91 is unreachable
```
### Potential vulnerability - The server on 167.172.144.11 is responding to ping requests so means the ICMP protocol isn't disabled allowing malicious users that there is a device at that IP address.

### OSI Layer - Layer 3 - Network

# Phase 2

### Command
```
sudo nmap -sS 167.172.144.11
```

### Results
```
Nmap scan report for 167.172.144.11
Host is up (0.048s latency).
Not shown: 995 closed ports
PORT    STATE    SERVICE
22/tcp  open     ssh
25/tcp  filtered smtp
135/tcp filtered msrpc
139/tcp filtered netbios-ssn
445/tcp filtered microsoft-ds

Nmap done: 1 IP address (1 host up) scanned in 298.39 seconds
```

### Potential vulnerability - port 22 is open and listen. This port is typical used with SSH and could allow a malacious user to log into that server. 

### OSI Layer - Layer 4 - Transport


# Phase 3

### Machine has following entry in hosts file
```
98.137.246.8 rollingstone.com
```
### Command to find the DNS name for the ip address and the result
```
nslookup 98.137.246.8

8.246.137.98.in-addr.arpa	name = unknown.yahoo.com.
```

### Potential vulnerability - Users are being redirected to a website that isn't the requested web site. This could be a malicous user making a "spoofed" version of the website so as to steal PII and/or user login information

### OSI Layer - Layer 7 

# Phase 4

### Issues that warrent further investigateion
    1. Multiple devices have the same ip addres. This could be a misconfiguration of one of the devices having a hard set IP address but there not being a DHCP reservation so that address was handing out to another device. It could also be malicious activity of a rogue device on the network
    2. Some HTTP traffic is being redirected through a site that is embedding the requested page and possible doing data scraping of user inputs.


 
