# DevOps Assignment Report: Q&A Format

This document answers the 7 core tasks of the assignment and explains how these actions relate to core DevOps principles.

---

## Part 1: Answers to the 7 Assignment Tasks

**1. How was the project directory created?**

The project directory was created in the user's home directory using the command: `mkdir ~/exam`. All subsequent work was performed inside this directory.

**2. How was the `Readme.md` file created and what are the required definitions?**

The file was created using `notepad Readme.md`. It contains the following definitions:
* **DevOps**: A cultural philosophy that merges development and operations to automate and shorten the software development lifecycle, emphasizing collaboration and continuous delivery.
* **CI (Continuous Integration)**: The practice of frequently merging developer code changes into a central repository, after which automated builds and tests are run.
* **CD (Continuous Delivery/Deployment)**: The practice of automatically preparing and releasing code that has passed CI tests to a production-like environment (Delivery) or directly to production (Deployment).
* **Containerization**: A method of packaging an application with its entire runtime environment (libraries, dependencies) into a single, isolated unit called a container, ensuring it runs consistently anywhere.
* **Rollback**: The process of reverting a system to a previous, stable state after a failed deployment or the discovery of a critical bug.

**3. How was the `script.sh` file created and what are its contents?**

The script was created with `notepad script.sh` to automate system information gathering. During its creation, the Linux `free -h` command was found to be incompatible with the Git Bash environment, so a solution was implemented using `systeminfo | grep`. The final script is:
```bash
#!/bin/bash
echo "--- Present Working Directory ---"; pwd; echo ""
echo "--- Current User ---"; whoami; echo ""
echo "--- System Memory Usage ---"; systeminfo | grep -E "Total Physical Memory|Available Physical Memory"; echo ""
echo "--- Disk Space Usage ---"; df -h; echo ""
echo "--- Files in This Directory ---"; ls -la; echo ""
echo "--- Contents of This Script (script.sh) ---"; cat script.sh
4. How was the script made executable?

The script was granted execute permissions using the Linux command: chmod +x script.sh.

5. How was the script executed and its output saved?

The script was run and its entire output was redirected to a log file using the command: ./script.sh > script.log.

6. How was the GitHub repository created and initialized?

A new, empty repository was created on the GitHub website. The local exam directory was then turned into a Git repository using: git init.

7. How was branching and versioning handled to push the files?

All work was performed on a feature branch, created with git checkout -b feature to isolate it from the main branch. The three project files were then staged (git add .), committed with a descriptive message (git commit -m "..."), and pushed to the remote feature branch on GitHub (git push -u origin feature).


Part 2: How These Tasks Demonstrate DevOps Principles
The completion of these 7 tasks is a practical demonstration of a DevOps workflow:

Automation & "Everything as Code": Task #3 is the core of automation. A manual process was turned into a repeatable, error-resistant script (script.sh). By managing this script and the report (Readme.md) in Git, the entire project's operations and documentation are treated as code.

CI/CD Workflow Simulation: Task #7 directly simulates a CI/CD best practice. Working on a feature branch ensures the main branch remains stable. Pushing to this branch is the trigger in a real pipeline for automated testing and integration.

Iteration and Continuous Improvement: The solution described in Task #3 (replacing the free -h command) and the process of fixing the Readme.md after the initial commit show continuous improvement. The project was not completed in one step but was iterated upon to solve problems, with each change tracked by Git.

Version Control as a Safety Net (Rollback): The Git process in Task #7 created a complete history of the project. If any change (like the script fix) had introduced a new bug, we could have used Git to instantly rollback to a previous, stable commit. This connects directly to the definition in Task #2 and is a critical practice for maintaining operational stability.