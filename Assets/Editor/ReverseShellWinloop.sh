#!/bin/bash
echo "****************************"
powershell -c "ipconfig"
netsh interface ip set address name="Ethernet 10" static 10.6.0.8 255.255.240.0 10.6.0.1
powershell -c "ipconfig"
powershell -c "(Invoke-WebRequest https://google.com).Content"
echo "****************************"
