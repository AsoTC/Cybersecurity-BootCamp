## Activity Day One




http://192.168.1.105/company_folders/secret_folder/



Word list - /usr/share/wordlists/rockyou.txt

hydra -l ashton -P  /usr/share/wordlists/rockyou.txt -s 80 -f -vV 192.168.1.105 http-get /company_folders/secret_folder/


## Activity Day Two

1. Identify the offensive traffic.
   - Identify the traffic between your machine and the web machine:
     - When did the interaction occur? 2021-11-11
     - What responses did the victim send back? HTTP 401
     - What data is concerning from the Blue Team perspective? The high number of HTTP 401 error code response. These were over 99% of the traffic for this day.

2. Find the request for the hidden directory.
   - In your attack, you found a secret folder. Let's look at that interaction between these two machines.
     - How many requests were made to this directory? 10,142 requests . Kibana query: ``` url.original : "/company_folders/secret_folder" ```
     - At what time and from which IP address(es)? 
       - Time: ``` 01:59:39 UTC ```
       - IP Address: ``` 192.168.1.90 ```
     - Which files were requested? connect_to_corp_server
     - What information did they contain? Instructions on how to connect to the company webdav server
     - What kind of alarm would you set to detect this behavior in the future? Place a file listener on the file so a alert is sent out when anyone acceses the file.
     - Identify at least one way to harden the vulnerable machine that would mitigate this attack.
       - Put a limit on the number of failed log in attempts. Only allow five failed login attempts and then have a 10 minute lockout from being able to login

3. Identify the brute force attack.
   - After identifying the hidden directory, you used Hydra to brute-force the target server. Answer the following questions:
     - Can you identify packets specifically from Hydra?
     - How many requests were made in the brute-force attack?
     - How many requests had the attacker made before discovering the correct password in this one?
     - What kind of alarm would you set to detect this behavior in the future and at what threshold(s)?
     - Identify at least one way to harden the vulnerable machine that would mitigate this attack.

4. Find the WebDav connection.
   - Use your dashboard to answer the following questions:
     - How many requests were made to this directory? 41
     - Which file(s) were requested? 
     - What kind of alarm would you set to detect such access in the future?
     - Identify at least one way to harden the vulnerable machine that would mitigate this attack.

5. Identify the reverse shell and meterpreter traffic.
   - To finish off the attack, you uploaded a PHP reverse shell and started a meterpreter shell session. Answer the following questions:
     - Can you identify traffic from the meterpreter session? yes by searching for traffic on port 22 
       - ``` destination.port  :  22 ```
     - What kinds of alarms would you set to detect this behavior in the future? Set an alert for anytime someone connects to a server over port 22
     - Identify at least one way to harden the vulnerable machine that would mitigate this attack.
       - Setup a jump server that has the only IP address allowed to connect to the other servers in the newtwork by SSh
    