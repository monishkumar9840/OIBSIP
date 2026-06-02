# Task 3: SQL Injection on DVWA (Low Security)

## Objective

The objective of this task is to demonstrate a SQL Injection vulnerability using DVWA (Damn Vulnerable Web Application) configured with a low security level. The task helps understand how improper input handling can allow attackers to manipulate database queries and retrieve unauthorized information.


## Environment Setup

### Attacker Machine

* Kali Linux

### Target Machine

* Metasploitable 2

### Vulnerable Application

* DVWA (Damn Vulnerable Web Application)

### Security Level

* Low

### Virtualization Platform

* Oracle VirtualBox


## Tools Used

* Kali Linux
* Metasploitable 2
* DVWA
* Mozilla Firefox
* VirtualBox


## DVWA Configuration

1. Opened DVWA in the browser.
2. Logged in using the default administrator account.
3. Navigated to **DVWA Security**.
4. Set the security level to **Low**.
5. Opened the **SQL Injection** module.


## SQL Injection Demonstration

### Normal Input Test

A valid User ID was entered into the application.

Example:

```text
5
```

Result:

```text
ID: 5
First Name: Bob
Surname: Smith
```

The application returned a single user record corresponding to the supplied User ID.

### SQL Injection Test

A specially crafted input was entered into the User ID field.

Result:

The application returned multiple user records instead of a single user record.

Example records displayed:

* admin
* Gordon Brown
* Hack Me
* Pablo Picasso
* Bob Smith

This demonstrates that user input was interpreted as part of the SQL query rather than as simple data.


## Vulnerability Explanation

SQL Injection occurs when an application incorporates user-supplied input directly into database queries without proper validation or parameterized statements.

In DVWA Low Security mode, user input is not adequately protected. As a result, specially crafted input can alter the logic of the database query and cause unintended data to be returned.

## Impact of SQL Injection

A successful SQL Injection attack may allow an attacker to:

* Access unauthorized records
* Bypass application restrictions
* Retrieve sensitive information
* Modify database contents
* Compromise application security

## Mitigation Techniques

The following security measures help prevent SQL Injection vulnerabilities:

1. Use Prepared Statements
2. Use Parameterized Queries
3. Validate User Input
4. Apply Input Sanitization
5. Follow the Principle of Least Privilege
6. Implement Secure Coding Practices
7. Perform Regular Security Testing


## Findings

* DVWA successfully demonstrated a SQL Injection vulnerability.
* Normal input returned a single record.
* Specially crafted input caused multiple records to be displayed.
* The vulnerability exists due to improper handling of user input within database queries.


## Conclusion

This task successfully demonstrated a SQL Injection vulnerability in DVWA running on Metasploitable 2 with the security level set to Low. The exercise provided practical experience in understanding how insecure database queries can expose sensitive information and highlighted the importance of secure coding practices.

## Author

Monish Kumar

Security Analyst Internship – Task 3
