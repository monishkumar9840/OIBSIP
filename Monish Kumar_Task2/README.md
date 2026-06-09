&#x20;                                          **Task 2: Basic Firewall Configuration Using UFW**



**Objective**



The objective of this task was to configure a basic host-based firewall using UFW (Uncomplicated Firewall) on a Linux system. The firewall was configured to allow secure remote administration through SSH while blocking HTTP traffic to demonstrate basic access control and traffic filtering.





**Overview**



A firewall is a critical security control that monitors and regulates incoming and outgoing network traffic based on predefined security rules. Proper firewall configuration helps reduce the attack surface of a system by limiting unnecessary network exposure.



In this task, UFW (Uncomplicated Firewall) was used to implement simple but effective firewall rules.







**Environment Details**



***Operating System***



\* Kali Linux



***Firewall Software***



\* UFW (Uncomplicated Firewall)



***Virtualization Platform***



\* Oracle VirtualBox





**Task Requirements**



The following firewall configuration requirements were implemented:



| Requirement         | Status    |

| ------------------- | --------- |

| Install UFW         | Completed |

| Allow SSH Traffic   | Completed |

| Deny HTTP Traffic   | Completed |

| Enable Firewall     | Completed |

| Verify Active Rules | Completed |





\# Configuration Process



*Step 1: Verify UFW Installation*



The UFW package was verified and installed if required.



```bash

sudo apt install ufw

```



*Step 2: Reset Existing Rules*



Existing firewall rules were cleared to ensure a clean configuration.



```bash

sudo ufw reset

```



*Step 3: Configure Default Policies*



The firewall was configured to:



\* Deny all incoming connections by default.

\* Allow all outgoing connections.



```bash

sudo ufw default deny incoming

sudo ufw default allow outgoing

```



*Step 4: Allow SSH Access*



SSH traffic was explicitly permitted to allow secure remote administration.



```bash

sudo ufw allow 22/tcp

```





*Step 5: Block HTTP Traffic*



HTTP traffic was denied to prevent web server access through port 80.



```bash

sudo ufw deny 80/tcp

```





*Step 6: Enable UFW*



The firewall was activated.



```bash

sudo ufw enable

```



*Verification Results*



The firewall status confirmed that the required rules were successfully applied.



Active Rules



| Port | Protocol   | Action |

| ---- | ---------- | ------ |

| 22   | TCP        | ALLOW  |

| 80   | TCP        | DENY   |

| 22   | TCP (IPv6) | ALLOW  |

| 80   | TCP (IPv6) | DENY   |





Security Analysis



*SSH Allowed (Port 22)*



SSH is commonly used for secure remote administration.



*Benefit*



\* Provides encrypted communication.

\* Protects credentials during transmission.

\* Enables secure system management.



*Security Consideration*



SSH access should be restricted to authorized users and protected using strong passwords or key-based authentication.





*HTTP Denied (Port 80)*



HTTP traffic was intentionally blocked.



**Benefit**



\* Prevents unauthorized access to web services.

\* Reduces exposure of web-based applications.

\* Demonstrates traffic filtering capabilities.



*Security Consideration*



Organizations should expose only necessary services and block unused ports whenever possible.





***Findings***



The firewall successfully enforced the configured security policy.



***Key observations:***



\* Incoming SSH traffic is permitted.

\* Incoming HTTP traffic is blocked.

\* UFW is active and functioning correctly.

\* Both IPv4 and IPv6 rules were applied.



**Importance of Firewall Configuration**



Proper firewall configuration is one of the fundamental layers of cybersecurity defense.



Benefits include:



\* Reduced attack surface

\* Improved access control

\* Protection against unauthorized connections

\* Enhanced network security

\* Better system hardening



Firewalls are commonly used as the first line of defense in enterprise and personal computing environments.





**Conclusion**



This task demonstrated the successful implementation of a basic firewall policy using UFW on Kali Linux. The configuration allowed secure SSH communication while blocking HTTP traffic according to the project requirements.



The exercise highlighted the importance of firewall management and access control in protecting systems against unnecessary network exposure.



***Project Files***



Included Files



\* README.md

\* ufw\_configuration.sh

\* Screenshots





Screenshots



UFW Firewall Rules Verification



Shows:



\* Firewall Status: Active

\* SSH (22/tcp) Allowed

\* HTTP (80/tcp) Denied





Author



Monish Kumar R



Security Analyst Intern–Task 2



