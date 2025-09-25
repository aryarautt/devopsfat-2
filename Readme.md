\# Project Report: DevOps Fundamentals in Practice



\## 1. Project Overview



This project demonstrates a foundational DevOps workflow. The goal was to create an automated script to gather system information, document the process, and manage the project files using Git for version control. This document serves as the central report, detailing both the concepts and the practical steps taken.



---



\## 2. Core DevOps Concepts Explained



Before detailing the process, here are the core concepts this project is built upon:



\* \*\*DevOps\*\*: A cultural approach that combines software development (Dev) and IT operations (Ops) to shorten the development lifecycle. It emphasizes automation, collaboration, and continuous improvement to deliver software faster and more reliably.

\* \*\*CI (Continuous Integration)\*\*: A practice where developers frequently merge their code into a shared repository. Each merge triggers an automated build and test sequence, allowing teams to detect problems early.

\* \*\*CD (Continuous Delivery/Deployment)\*\*: The next stage after CI. Continuous Delivery automatically prepares the tested code for release to a production-like environment. Continuous Deployment takes it a step further by automatically pushing the changes to live users.

\* \*\*Containerization\*\*: A method of packaging an application with all its dependencies (libraries, settings, etc.) into a single, portable unit called a container. This ensures the application runs consistently across different environments.

\* \*\*Rollback\*\*: The process of reverting a system or application to a previous, stable state. This is a critical safety measure used when a new deployment introduces errors.



---



\## 3. Process and Execution Steps



This project was completed by following a structured, repeatable process.



\### Step 1: Automation with `script.sh`



An automation script named `script.sh` was created to perform several system checks without manual intervention.



\*\*Script Purpose\*\*: To automatically gather and display key system metrics, such as the current location, user, memory/disk usage, and local files.



\*\*Script Content\*\*:

```bash

\#!/bin/bash



echo "--- Present Working Directory ---"

pwd

echo ""



echo "--- Current User ---"

whoami

echo ""



echo "--- System Memory Usage ---"

systeminfo | grep -E "Total Physical Memory|Available Physical Memory"

echo ""



echo "--- Disk Space Usage ---"

df -h

echo ""



echo "--- Files in This Directory ---"

ls -la

echo ""



echo "--- Contents of This Script (script.sh) ---"

cat script.sh

