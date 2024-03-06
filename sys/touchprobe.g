; touchprobe.g - Configures an optional touch probe.

; Not part of LDO kit, disabled by default.
; Configure the pin in user-vars.g to enable this.
if { global.miloPinTouchProbe != null }
    M558 K0 P5 C{global.miloPinTouchProbe} H2 A10 S0.01 T1200 F300:50