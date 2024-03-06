; homey.g
; Lifts Z, then homes Y using existing machine limits

; Relative positioning
G91

; Raise Z towards machine limit as it is already homed
G53 G0 Z{move.axes[2].max}

; Move quickly to Y axis endstop and stop there (first pass)
G53 G1 H1 Y{ move.axes[1].max - move.axes[1].min + 5 } F{1800}

; Move away from Y endstop
G53 G1 H2 Y{-5}

; Repeat Y home at low speed. Do not move further than
; 2 * 5 further than the expected endstop locations.
G53 G1 H1 Y{5*2} F{180}