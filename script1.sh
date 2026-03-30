
uname -r
System binaries are located in:
/usr/bin
Configuration files are stored in:
/etc
Logs are maintained in:
/var/log
Linux runs under multiple users, and permissions ensure system security. Services can be managed using:
systemctl start
systemctl stop
systemctl restart
Updates are provided through package managers like apt, which download updates from open-source repositories.
Script 1 — System Identity Report
#!/bin/bash
STUDENT_NAME="BIJIN BIJU"
SOFTWARE_CHOICE="Linux"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)

echo "================================"
echo "Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "Distro   : $DISTRO"
echo "License  : GPL (Linux Kernel)"
