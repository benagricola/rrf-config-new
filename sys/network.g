; network.g - Configure network settings

; Enable WiFi adapter in AP mode
; Change this to S1 for client mode _after_
; configuring WiFi network details using M587
; to store the details in the WiFi module.
M552 S2

; Enable HTTP, disable FTP and Telnet
M586 P0 S1
M586 P1 S0
M586 P2 S0