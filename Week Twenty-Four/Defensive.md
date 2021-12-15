# Blue Team: Summary of Operations

## Table of Contents
- Network Topology
- Description of Targets
- Monitoring the Targets
- Patterns of Traffic & Behavior
- Suggestions for Going Further

### Network Topology
_TODO: Fill out the information below._

The following machines were identified on the network:
- Name of VM 1
  - **Operating System**: Debian Linux
  - **Purpose**: Wodpress Server
  - **IP Address**: 192.168.1.110
- Name of VM 2
  - **Operating System**: Debian Linux
  - **Purpose**: Wordpress server
  - **IP Address**: 192.168.1.115
-  Name of ELK VM
  - **Operating System**: Linux
  - **Purpose**: Monitoring and logging server
  - **IP Address**: 192.168.1.100
-  Name of Kali VM 
  - **Operating System**: Kali Linux
  - **Purpose**: Attack server
  - **IP Address**:  192.168.1.90 
-  Name of Capstone VM 
  - **Operating System**: Ubuntu Linux
  - **Purpose**: test machine for making sure ELK server is working correctly
  - **IP Address**: 192.168.1.105

### Description of Targets

The target of this attack was: `Target 1` 192.168.1.110.

Target 1 is an Apache web server and has SSH enabled, so ports 80 and 22 are possible ports of entry for attackers. As such, the following alerts have been implemented:

### Monitoring the Targets

Traffic to these services should be carefully monitored. To this end, we have implemented the alerts below:

#### Excessive HTTP errors
Alert 1 is implemented as follows:
  - **Metric**: HTTP Status code
  - **Threshold**: 500 HTTP status code errors over five minutes
  - **Vulnerability Mitigated**: brute force attacks on the website
  - **Reliability**: 

#### HTTP Request Size Monitor
Alert 2 is implemented as follows:
  - **Metric**: HTTP request payload size
  - **Threshold**: 5000 bytes over a minute
  - **Vulnerability Mitigated**: 
  - **Reliability**: Medium

#### CPU Usage monitor
Alert 3 is implemented as follows:
  - **Metric**: CPU usage
  - **Threshold**: 50% CPU usage 
  - **Vulnerability Mitigated**: Bitcoin mining
  - **Reliability**: Medium



