&#x20;                                            **Task 10: Network Security Assessment Report**



**Objective**



The objective of this assessment was to evaluate the security posture of a test network by performing network reconnaissance using Nmap and analyzing network traffic using Wireshark. The assessment was conducted in a controlled virtual laboratory environment consisting of Kali Linux and Metasploitable 2.





**Executive Summary**



A network security assessment was performed against the Metasploitable 2 virtual machine hosted within a private laboratory network.



The assessment identified numerous open services, including FTP, Telnet, HTTP, MySQL, PostgreSQL, Samba, and Tomcat. Several services were found to be outdated and insecure by modern security standards.



Network traffic analysis using Wireshark revealed unencrypted HTTP communications between the client and server, demonstrating the risks associated with transmitting sensitive data over plaintext protocols.



Overall Risk Rating: \*\*High\*\*





**Assessment Environment**



***Analyst Machine***



Operating System: Kali Linux

IP Address: 192.168.56.104



***Target Machine***



Operating System: Metasploitable 2

IP Address: 192.168.56.105



***Network Configuration***



VirtualBox Host-Only Network

Isolated Lab Environment



**Tools Used**



***Nmap***



*Purpose:*



\* Host Discovery

\* Port Scanning

\* Service Enumeration

\* Version Detection



Command Used:



```bash

nmap -A 192.168.56.105 -oN nmap\_results.txt

```



***Wireshark***



Purpose:



\* Packet Capture

\* Traffic Analysis

\* HTTP Inspection



Display Filter Used:



```text

http

```



**Nmap Scan Findings**



The scan identified 23 open TCP ports.



Critical Services Identified



| Port | Service       | Version       |

| ---- | ------------- | ------------- |

| 21   | FTP           | vsftpd 2.3.4  |

| 22   | SSH           | OpenSSH 4.7p1 |

| 23   | Telnet        | Linux telnetd |

| 25   | SMTP          | Postfix smtpd |

| 53   | DNS           | BIND 9.4.2    |

| 80   | HTTP          | Apache 2.2.8  |

| 139  | Samba         | Samba 3.X     |

| 445  | Samba         | Samba 3.0.20  |

| 3306 | MySQL         | 5.0.51a       |

| 5432 | PostgreSQL    | 8.3           |

| 8180 | Apache Tomcat | 5.5           |



**Significant Security Observations**



***Anonymous FTP Access Enabled***



The Nmap scan reported:



\* Anonymous FTP login allowed

\* Plaintext communication



***Risk***



Unauthorized users may access files without authentication.



***Severity***



High



Telnet Service Enabled



Port 23 was open and running Telnet.



Risk



Telnet transmits credentials and data without encryption.



Severity



High





***Outdated Web Server***



Apache HTTP Server 2.2.8 was detected.



*Risk*



Older web server versions often contain publicly known vulnerabilities.



*Severity*



High





**Samba Service Exposure**



Ports 139 and 445 were accessible.



*Risk*



Samba services have historically been associated with multiple security vulnerabilities and unauthorized file-sharing risks.



*Severity*



High





**Legacy Database Services**



The following database services were identified:



\* MySQL 5.0.51a

\* PostgreSQL 8.3



*Risk*



Outdated database software may contain known security flaws and unsupported components.



*Severity*



Medium to High





***Tomcat Service Detected***



Apache Tomcat 5.5 was running on port 8180.



*Risk*



Older application servers may expose administrative interfaces and vulnerable web applications.



*Severity*



Medium





***Wireshark Traffic Analysis***



Packet captures were collected during web browsing activity between Kali Linux and Metasploitable 2.



*Communication Observed*



Source:



```text

192.168.56.104

```



Destination:



```text

192.168.56.105

```



Protocol:



```text

HTTP

```





***HTTP Requests Identified***



The following requests were observed:



```http

GET /

```



```http

GET /dvwa

```



```http

GET /dvwa/login.php

```



These requests confirmed successful communication with the web server and DVWA application.



***HTTP Responses Observed***



***HTTP 200 OK***



Indicates successful resource delivery.



HTTP 301 Moved Permanently



Indicates permanent redirection.



HTTP 302 Found



Indicates temporary redirection.





**Security Concerns Identified Through Traffic Analysis**



***Unencrypted HTTP Traffic***



All captured web traffic used HTTP instead of HTTPS.



*Risk*



Sensitive information may be exposed to network monitoring.



Examples include:



\* Login credentials

\* Session identifiers

\* Application data



*Severity*



Medium





**Information Disclosure**



Packet analysis revealed:



\* Server response codes

\* Application paths

\* Resource locations



This information may assist attackers in mapping web applications.



*Severity*



Medium



Risk Summary



| Finding                  | Severity    |

| ------------------------ | ----------- |

| Anonymous FTP Access     | High        |

| Telnet Service           | High        |

| Outdated Apache Server   | High        |

| Samba Exposure           | High        |

| Legacy Database Services | Medium-High |

| Unencrypted HTTP Traffic | Medium      |

| Information Disclosure   | Medium      |





**Recommendations**



***Disable Telnet***



Replace Telnet with SSH for secure remote administration.





***Disable Anonymous FTP***



Require authentication for all FTP access.





***Upgrade Legacy Services***



Update:



\* Apache

\* Samba

\* MySQL

\* PostgreSQL

\* Tomcat



to supported versions.





***Implement HTTPS***



Deploy SSL/TLS certificates and redirect all HTTP traffic to HTTPS.





***Restrict Service Exposure***



Close unnecessary ports and limit access using firewall rules.



\---



***Conduct Regular Assessments***



Perform:



\* Vulnerability Scanning

\* Security Audits

\* Penetration Testing

\* Patch Management



on a regular basis.





**Conclusion**



The network assessment identified multiple security weaknesses within the target environment. The presence of outdated services, anonymous FTP access, Telnet, and unencrypted HTTP communications significantly increases the attack surface of the system.



The assessment demonstrates the importance of continuous monitoring, secure configuration, service hardening, and regular patch management. Implementing the recommended controls would substantially improve the overall security posture of the environment.



Author



Monish Kumar R



Security Analyst Intern 



