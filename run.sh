#!/usr/bin/with-contenv bashio

# Ensure the TFTP directory exists before trying to list or serve it
if [ ! -d "/share/srv/tftp" ]; then
    echo "Creating TFTP directory at /share/srv/tftp..."
    mkdir -p /share/srv/tftp
fi

echo "Starting server."
echo "Sharing files:"
ls /share/srv/tftp

exec in.tftpd -L --secure /share/srv/tftp
