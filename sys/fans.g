; fans.g - Configures fans

; TODO: Is Q500 appropriate?

; Configure fan port 0 and enable at startup
if { global.miloPinFan0 != null }
    M950 F0 C{global.miloPinFan0} Q500
    M106 P0 S1 H-1

; Configure fan port 1 and enable at startup
if { global.miloPinFan1 != null }
    M950 F1 C{global.miloPinFan1} Q500
    M106 P1 S1 H-1