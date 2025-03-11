# Project Scope

### Target Systems and Envrioments: 

* The scanner is designed to scan IP addresses, detect open ports, and identify potential vulnerabilities associated with those ports and services. 
* The range of IPs and types of devices that are scanned should be considered. 

### Technology Stack

* Python 
* Bash
* The scanner uses Nmap for network scanning and identifying open ports/services. 
* Integration with other tools and databases, such as CVE repositories 
* CLI tool for now

### Vulnerability Types

* The scanner primarily checks for vulnerabilities based on known CVEs tied to services detected by Nmap. 
* In the future it could identify misconfigurations, weak credentials, and outdated software versions based on known signatures. 
* Vulnerability database stored in AWS s3 bucket

### Output and Reporting 

Displays console output along with using .CSV files and JSON for output 

# Project Goals

1. Network and Vulnerability Discovery:

* Scan IP addresses within a given range or subnet.
* Detect open ports and identify services running on those ports.
* Identify known vulnerabilities associated with those services based on the service version and configuration (e.g., CVE vulnerabilities).
* Incorporate Nmap scripting to detect specific vulnerabilities.

2. Ease of Use:

* The scanner should be user-friendly for system administrators, security teams, or developers with minimal setup.
* Provide clear outputs and a simple interface for interacting with the tool.
* CLI-based but with the potential for expanding into a web interface for non-technical users.

3. Automation and Scheduling:

* Provide the ability to automate scans (e.g., scheduled scans at regular intervals).
* Integrate with existing automation tools or CI/CD pipelines for continuous vulnerability monitoring.

4. Reporting:

* Generate actionable vulnerability reports that can be easily interpreted by IT staff or security teams.
* Include a summary of findings with a severity score to prioritize patching or mitigation efforts.
* Generate recommendations for addressing vulnerabilities (e.g., patching, updating configurations, blocking ports).

5. Customization:

* Allow the user to configure the scanner with custom Nmap options (e.g., scanning only specific ports, using particular Nmap scripts, etc.).
* Include options to add authentication for scanning services that require credentials.

6. Scalability:

* Support scanning of large networks and multiple IPs in parallel.
* Ensure the scanner performs well even on subnets with hundreds of hosts.

7. Integration:

* Provide APIs or integrations with other vulnerability management or security tools (e.g., vulnerability databases, SIEM systems).
* Allow integration with threat intelligence feeds to keep the vulnerability checks up to date.

8. Continuous Improvement:

* Implement logging, error handling, and diagnostic tools for easier debugging and development.
* Enable the scanner to be updated as new vulnerabilities and CVEs are identified, including regularly updating its scanning capabilities (e.g., new Nmap scripts or CVE detection).


# Example output 

<p align="center"><img src="https://github.com/nolimitcarter/ml-vuln-scanner/blob/main/assets/Screenshot-2025-03-11-001039.png" width="800px" length="700px"></p>
