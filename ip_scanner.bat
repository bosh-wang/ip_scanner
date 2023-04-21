@ECHO OFF
start ipscan.exe -sq -f:range 140.115.123.1 140.115.124.254 -o scan_result.txt
ping 127.0.0.1 -n 60 -w 1000 > nul
set arp_name=ip_%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.txt
copy scan_result.txt %arp_name: =0%
