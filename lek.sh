#!/bin/bash

# 1. Download the Falcon Sensor package and wait until it's complete
wget https://storage.googleapis.com/falcon-sensor.appspot.com/ubuntu/7.16.16903/falcon-sensor_7.16.0-16903_amd64.deb

# Check if the file was downloaded successfully
if [ -f "falcon-sensor_7.16.0-16903_amd64.deb" ]; then
    echo "Download complete."
else
    echo "Download failed."
    exit 1
fi

# 2. List the files in the current directory
ls

# 3. Change the permissions of the downloaded package
chmod 777 falcon-sensor_7.16.0-16903_amd64.deb

# 4. List the files again to confirm permission changes
ls

# 5. Install the Falcon Sensor package
dpkg -i falcon-sensor_7.16.0-16903_amd64.deb

# 6. Configure the Falcon Sensor with the CID
/opt/CrowdStrike/falconctl -s --cid=672988DA1DD740E2BFEF95FB658BABE5-3A

# 7. Enable the Falcon Sensor service to start at boot
systemctl enable falcon-sensor

# 8. Start the Falcon Sensor service
systemctl start falcon-sensor

# 9. Check the status of the Falcon Sensor service
systemctl status falcon-sensor

# 10. Alternative method to check the service status
service falcon-sensor status
