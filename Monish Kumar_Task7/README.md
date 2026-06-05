&#x20;                                                 **Task 7: Vulnerability Scanning with Nikto**



**Objective**



The objective of this task is to perform a web server vulnerability assessment using Nikto and identify potential security weaknesses present on the target system.



**Environment Setup**



***Attacker Machine***

Kali Linux

***Target Machine***

Metasploitable 2

***Tool Used***

Nikto v2.5.0

***Target IP Address***

192.168.56.105

***Target Port***

80 (HTTP)



***About Nikto***



Nikto is an open-source web server vulnerability scanner used to identify:



Outdated software versions

Security misconfigurations

Dangerous files and directories

Information disclosure issues

Missing security headers



It helps security professionals discover vulnerabilities that attackers may exploit.



***Scan Command Used***

nikto -h http://192.168.56.105 -o nikto\_scan\_results.txt



The scan was performed against the web server running on the Metasploitable 2 virtual machine.



**Key Findings**

**1. Outdated Apache Web Server**



Nikto identified that the target is running:



Apache/2.2.8



This version is outdated and has reached end-of-life status.



Risk



Older web server versions may contain publicly known vulnerabilities that attackers can exploit.



**2. Missing Security Headers**



The following HTTP security headers were not present:



X-Frame-Options

X-Content-Type-Options

Risk



Missing security headers can increase exposure to:



Clickjacking attacks

MIME-type confusion attacks

Browser-based security issues



**3. HTTP TRACE Method Enabled**



Nikto discovered that the TRACE method is active.



Risk



This may expose the server to Cross-Site Tracing (XST) attacks and unnecessary information disclosure.



**4. PHP Information Disclosure**



The scan identified:



phpinfo.php

Risk



The phpinfo() page exposes:



PHP version information

Server configuration details

Installed modules

System paths



This information may assist attackers during reconnaissance.



**5. Directory Listing Enabled**



Browsable directories were discovered:



/doc/

/test/

/icons/

Risk



Directory indexing allows unauthorized users to browse files and folders that should not be publicly accessible.



**6. phpMyAdmin Exposure**



Nikto found:



/phpMyAdmin/

Risk



phpMyAdmin is a database administration interface that should be restricted to authorized users.



If improperly secured, attackers may attempt credential attacks or exploit vulnerabilities.



**7. Sensitive File Exposure**



Nikto detected:



wp-config.php#

*Risk*



Configuration files may contain:



Database credentials

Usernames

Passwords

Application secrets



Exposure of such files can lead to complete system compromise.



**Vulnerability Summary**



Vulnerability	Risk Level

Outdated Apache Version	High

Missing Security Headers	Medium

HTTP TRACE Enabled	Medium

phpinfo() Exposure	Medium

Directory Listing Enabled	Medium

phpMyAdmin Accessible	High

Sensitive Configuration File Exposure	Critical



**Recommendations**



**Update Apache**



Upgrade the web server to a supported version and regularly apply security patches.



**Configure Security Headers**



Implement:



X-Frame-Options

X-Content-Type-Options

Content-Security-Policy



**Disable HTTP TRACE**



Disable unnecessary HTTP methods on the web server.



**Remove phpinfo() Files**



Delete or restrict access to testing and information disclosure pages.



**Disable Directory Indexing**



Prevent users from browsing directory contents.



**Restrict phpMyAdmin Access**



Allow access only from trusted hosts or administrative networks.



**Protect Sensitive Files**



Ensure backup and configuration files cannot be accessed through the web server.



**Findings**



The Nikto scan successfully identified multiple security weaknesses on the target web server. Most issues were related to outdated software, information disclosure, insecure configurations, and exposed administrative resources. These findings demonstrate the importance of regular vulnerability assessments and proper server hardening.



**Conclusion**



This task successfully demonstrated the use of Nikto for web server vulnerability scanning. Several vulnerabilities and misconfigurations were identified on the Metasploitable 2 web server, including outdated software, exposed administrative interfaces, directory listing, and information disclosure issues. The assessment highlights the importance of continuous vulnerability management and secure web server configuration.



*Author*



Monish Kumar R



Security Analyst Internship 

