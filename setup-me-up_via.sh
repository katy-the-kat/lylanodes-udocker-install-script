#!/bin/bash
USERNAME="user"
UDOCKER_VERSION="1.3.16"
UDOCKER_TAR="udocker-${UDOCKER_VERSION}.tar.gz"
UDOCKER_URL="https://github.com/indigo-dc/udocker/releases/download/${UDOCKER_VERSION}/${UDOCKER_TAR}"

if ! id -u $USERNAME > /dev/null 2>&1; then
    echo "Creating user '$USERNAME'..."
    echo "$USERNAME:x:1001:1001::/home/$USERNAME:/bin/bash" >> /etc/passwd
    echo "$USERNAME:*:18598:0:99999:7:::" >> /etc/shadow
    echo "$USERNAME:x:1001:" >> /etc/group
    mkdir -p /home/$USERNAME
    chown $USERNAME:$USERNAME /home/$USERNAME
    echo "User '$USERNAME' created successfully."
else
    echo "User '$USERNAME' already exists."
fi

echo "Installing curl and wget..."
apt update && apt install curl wget -y

echo "Downloading udocker version $UDOCKER_VERSION..."
wget $UDOCKER_URL

echo "Extracting udocker..."
tar zxvf $UDOCKER_TAR

echo "Setting up udocker environment..."
export PATH=`pwd`/udocker-${UDOCKER_VERSION}/udocker:$PATH

echo "udocker installation and setup completed."
