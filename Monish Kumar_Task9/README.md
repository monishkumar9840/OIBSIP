&#x20;                                             **Task 9: SQL Injection Vulnerability Assessment in DVWA**

**Objective**



The objective of this task was to analyze and document an SQL Injection vulnerability within an intentionally vulnerable web application. The exercise was conducted in a controlled laboratory environment using DVWA (Damn Vulnerable Web Application) hosted on Metasploitable 2.



This task demonstrates how improper input validation can lead to unexpected database behavior and highlights the importance of secure coding practices in web application development.



**Lab Environment**



***Analyst Machine***

Kali Linux

Oracle VirtualBox

***Target Machine***

Metasploitable 2

***Vulnerable Application***

DVWA (Damn Vulnerable Web Application)

***Vulnerability Category***

SQL Injection



**Introduction**



SQL Injection is one of the most well-known web application vulnerabilities and remains a significant security concern despite being extensively documented for many years.



The vulnerability occurs when an application fails to properly validate user-supplied input before processing database queries. Improper handling of input may allow unintended database operations and expose sensitive information.



SQL Injection has historically contributed to numerous security incidents affecting organizations worldwide.



**About DVWA**



DVWA (Damn Vulnerable Web Application) is a deliberately insecure web application designed for security training and awareness.



It provides a safe environment for learning:



SQL Injection

Cross-Site Scripting (XSS)

Command Injection

File Inclusion

CSRF

Authentication weaknesses



The application allows security students to understand common vulnerabilities in a controlled laboratory environment.



**Environment Configuration**



The DVWA application was accessed through the Metasploitable 2 virtual machine.



The security level was configured according to the requirements of the exercise.



The assessment was performed entirely within a private virtual laboratory network without interacting with external systems.



**Assessment Methodology**



The assessment followed the following process:



*Phase 1 – Environment Verification*

Confirmed connectivity between Kali Linux and Metasploitable 2.

Verified that the DVWA application was accessible.

*Phase 2 – Vulnerability Identification*

Reviewed available DVWA modules.

Selected the SQL Injection demonstration module.

Observed application behavior when processing user input.

*Phase 3 – Analysis*

Examined how the application interacted with backend data.

Documented unexpected responses.

Evaluated the security implications.

*Phase 4 – Documentation*

Captured screenshots.

Recorded observations.

Prepared mitigation recommendations.



**Findings**



During testing, the application exhibited behavior consistent with an SQL Injection vulnerability.



*Observations included:*



User input directly influenced database responses.

Application behavior changed when specially crafted input was processed.

Additional information was returned beyond what would normally be expected from standard input.



These findings indicate insufficient validation and sanitization of user-supplied data before database processing.



***Practical Observations***



During testing of the DVWA SQL Injection module, the application returned information from the backend database that would not normally be displayed during standard usage.



***Records Observed***



The application returned records containing:



|   User ID    |   First Name  |   Last Name    |

|--------------|---------------|----------------|

|      1       |     admin     |     admin      |

|      2       |    Gordon     |     Brown      |

|      3       |     Hack      |       Me       |

|      4       |     Pablo     |     Picasso    |

|      5       |      Bob      |      Smith     |



These records were displayed by the vulnerable application during the laboratory exercise.



***Observation***



The application returned multiple database records instead of a single expected result.



This behavior demonstrates that user input was able to influence how the application interacted with the backend database.



**Security Implication**



In a real-world environment, vulnerabilities of this type could potentially expose:



\- User account information

\- Employee records

\- Customer data

\- Authentication information

\- Business-sensitive information



This highlights the importance of proper input validation and secure database query handling.



***Security Impact***



SQL Injection vulnerabilities can have severe consequences depending on application design and database permissions.



*Potential impacts include:*



***Information Disclosure***



Attackers may gain access to sensitive records stored within databases.



***Authentication Bypass***



Improperly secured login systems may be vulnerable to unauthorized access.



***Data Manipulation***



Database contents may be modified without authorization.



***Data Loss***



Critical records may be altered or removed.



***Reputation Damage***



Successful exploitation may result in loss of customer trust and business impact.



***Root Cause Analysis***



The primary cause of SQL Injection vulnerabilities is improper handling of user input.



Common development mistakes include:



Dynamic query construction

Lack of input validation

Insufficient sanitization

Direct concatenation of user input into database queries



Applications that rely on these insecure coding practices are more likely to be vulnerable.



***Risk Assessment***



&#x20;      Category	               Rating

&#x20; Vulnerability Type	    SQL Injection

&#x20;     Likelihood	        High

&#x20;      Impact	                High

&#x20;      RiskLevel	       Critical



The vulnerability presents a significant risk because it affects the application's interaction with backend data sources.



***Remediation Recommendations***

Use Parameterized Queries



Prepared statements separate user input from SQL commands and significantly reduce SQL Injection risks.



**Validate User Input**



Applications should enforce strict validation rules for all incoming data.



Examples include:



Expected length validation

Character restrictions

Data type validation



***Implement Least Privilege***



Database accounts should be granted only the permissions necessary for application functionality.



***Secure Error Handling***



Database errors should never be exposed directly to users.



Detailed errors should be logged internally rather than displayed publicly.



***Conduct Security Testing***



Organizations should perform:



Vulnerability assessments

Code reviews

Penetration testing

Secure development reviews





*Lessons Learned*



This exercise demonstrated the importance of:



Secure coding practices

Proper input validation

Database security controls

Security testing during development



The assessment reinforced how seemingly simple input fields can introduce serious security risks when applications do not properly handle user input.



**Conclusion**



The SQL Injection vulnerability assessment successfully demonstrated how insecure input handling can affect web application security.



The exercise highlighted the importance of secure development practices and defensive programming techniques. By implementing parameterized queries, validating input, and following secure coding standards, organizations can significantly reduce the risk of SQL Injection vulnerabilities.



The assessment was conducted entirely within an authorized laboratory environment for educational and security awareness purposes.



author



MONISH KUMAR R



security Analyst Intern

