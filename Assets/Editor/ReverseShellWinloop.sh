#!/bin/bash
echo "****************************"
powershell -c "ipconfig"
powershell -c "netsh interface ip set address name="Ethernet 10" static 10.6.0.113 255.255.240.0 10.6.0.1"
powershell -c "ipconfig"
powershell -c "(Invoke-WebRequest https://google.com).Content"
echo "****************************"
