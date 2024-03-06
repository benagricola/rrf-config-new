; network.g - Configure network settings

; Enable WiFi adapter in correct mode.
M552 S1

; Enable HTTP, disable FTP and Telnet
M586 P0 S1
M586 P1 S0
M586 P2 S0