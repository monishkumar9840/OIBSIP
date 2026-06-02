# Task 1: Basic Network Scanning with Nmap

## Objective

The objective of this task is to perform a network scan using Nmap to identify open ports and services running on a target machine and understand their security significance.

## Environment Setup

### Attacker Machine

* Kali Linux
* Nmap Version: 7.95

### Target Machine

* Metasploitable 2

### Virtualization Platform

* Oracle VirtualBox

## Tools Used

* Nmap
* Kali Linux
* Metasploitable 2
* VirtualBox

## Network Connectivity Verification

Before performing the scan, connectivity between Kali Linux and Metasploitable 2 was verified using the ping command.

```bash
ping <Target-IP>
```

The successful response confirmed that the target machine was reachable.


## Commands Used

### 1. Basic Port Scan

```bash
nmap <Target-IP>
```

This scan identifies open TCP ports on the target system.

### 2. Service Version Detection

```bash
sudo nmap -sV <Target-IP>
```

This scan identifies the services running on open ports and their versions.

### 3. Operating System Detection

```bash
sudo nmap -O <Target-IP>
```

This scan attempts to identify the operating system running on the target machine.

### 4. Aggressive Scan

```bash
sudo nmap -A <Target-IP> -oN nmap_scan_results.txt
```

This scan performs service detection, OS detection, script scanning, and traceroute while saving results to a file.

---

## Open Ports Discovered

The Nmap scan identified several open ports on the Metasploitable 2 machine.

| Port | Service      | Description                  |
| ---- | ------------ | ---------------------------- |
| 111  | rpcbind      | Maps RPC services to ports   |
| 139  | netbios-ssn  | Windows NetBIOS file sharing |
| 445  | microsoft-ds | SMB file sharing service     |
| 512  | exec         | Remote process execution     |
| 513  | login        | Remote login service         |
| 514  | shell        | Remote shell access          |
| 1099 | rmiregistry  | Java RMI Registry            |
| 1524 | ingreslock   | Vulnerable backdoor service  |
| 2049 | nfs          | Network File System          |
| 2121 | ftp          | File Transfer Protocol       |
| 3306 | mysql        | MySQL Database Service       |
| 5432 | postgresql   | PostgreSQL Database Service  |
| 5900 | vnc          | Remote Desktop Access        |
| 6000 | X11          | X Window System              |
| 6667 | irc          | Internet Relay Chat Service  |
| 8009 | ajp13        | Apache JServ Protocol        |
| 8180 | http         | Web Application Service      |


## Security Significance of Open Ports

### Port 139 and 445 (SMB)

These ports provide file-sharing capabilities. Improperly secured SMB services can expose sensitive data and are commonly targeted by attackers.

### Port 512, 513, and 514

These remote access services are considered insecure because they often transmit information without encryption.

### Port 3306 (MySQL)

Allows database access. Weak credentials may lead to unauthorized database access.

### Port 5432 (PostgreSQL)

Provides access to PostgreSQL databases and should be secured against unauthorized access.

### Port 5900 (VNC)

Used for remote desktop access. Weak authentication may allow unauthorized control of the system.

### Port 6667 (IRC)

Commonly associated with IRC servers and can sometimes be abused by malware or botnets.


## Findings

* Multiple services were discovered running on the target machine.
* Several services are outdated and intentionally vulnerable for security testing purposes.
* The scan demonstrated how Nmap can identify open ports, running services, and potential attack surfaces.

## Conclusion

The network scan was successfully conducted using Nmap from Kali Linux against the Metasploitable 2 virtual machine. Multiple open ports and services were identified and analyzed. This task provided practical experience in network reconnaissance and highlighted the importance of understanding exposed services in a network environment.

## Screenshots

Screenshots of the following activities are included in the repository:

1. Ping Test
2. Nmap Version Verification
3. Basic Port Scan
4. Service Version Detection
5. Operating System Detection
6. Aggressive Scan
7. Saved Scan Results


## Author

Sruthilayaa SB

Security Analyst Internship Task 1
