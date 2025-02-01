#!/bin/bash

# Start ZAP in daemon mode (no GUI, runs in the background)
echo "Starting OWASP ZAP..."
zap.sh -daemon -port 8080 &

# Store the ZAP process ID
ZAP_PID=$!

# Wait for ZAP to start (optional, adjust time as necessary)
sleep 10

# Perform the scan (adjust with your actual scan logic or URL)
echo "Starting the scan..."
python3 ./vulnerability_scanner/scanner.py  # Replace with your actual Python script to start the scan

# Wait for the scan to finish (optional, adjust time as necessary)
# For example, wait for 10 minutes (600 seconds)
echo "Waiting for scan to complete..."
sleep 600  # Replace this with your actual scan duration or logic to check if the scan is finished

# Stop ZAP after the scan is done
echo "Stopping OWASP ZAP..."
kill $ZAP_PID

# Optionally, confirm ZAP has been stopped
if ps -p $ZAP_PID > /dev/null; then
    echo "ZAP is still running, forcing stop..."
    kill -9 $ZAP_PID
else
    echo "ZAP has stopped."
fi

echo "Scan complete and ZAP stopped."
