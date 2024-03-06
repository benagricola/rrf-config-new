; Put WiFi adapter in idle mode
M552 S0

; Wait 2 seconds
G4 S2

; Configure WiFi AP
M589 S"Milo" P"millenniummachines" I192.168.0.1

; Enable WiFi in AP mode
M552 S2