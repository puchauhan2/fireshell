# Server Automation Script

This Bash script automates system administration tasks across multiple remote servers via SSH. It supports both sequential and parallel execution modes and offers various functions like system information gathering, custom script execution, package checking, and installation.

---

## 📦 Features

- Execute tasks on multiple servers listed in `server.txt`
- Supports **parallel** and **single server** execution
- Remote script execution via `ssh` and `scp`
- Captures success and failure logs per host
- Menu-based interface for ease of use

---

## 🗂 Directory Structure

. ├── modules/ │ ├── logo.bash │ └── report.bash ├── server.txt ├── credential_config.sh ├── your_script.sh ├── log/ │ ├── success_server.txt │ ├── failed_server.txt │ └── *.log └── main_script.sh

---

## 🛠 Prerequisites

- Bash 4.x or higher
- SSH access to target servers
- Key-based authentication configured
- `scp` and `ssh` installed

---

## 🧾 Setup

1. **Define servers**: Add target server IPs (one per line) to `server.txt`.

2. **Credential config**: Update `credential_config.sh` with your SSH username and key file path.

   ```bash
   username="your-ssh-user"
   key="/path/to/private-key.pem"

🚀 Usage
bash main_script.sh

You'll be prompted to choose:

    Execution mode: parallel or single server

    Job type:

        1 → System Information

        2 → Run Your Script

        3 → Package Check

        4 → Package Install

📁 Output

    Logs are stored in log/ directory.

    Success/failure status is written to:

        log/success_server.txt

        log/failed_server.txt

    Custom logs per server: log/<server>_*.log

⚠️ Signal Handling

Pressing CTRL+C triggers a graceful exit and logs current progress.
🧹 Cleanup

Logs and output files can be removed manually:

rm -rf log/*

👨‍💻 Author

    Maintained by Puneet Chauhan

📜 License

This project is licensed under the MIT License.
