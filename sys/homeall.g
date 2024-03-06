; homeall.g
; Homes Z, then homes X and Y together using existing machine limits

; Relative positioning in mm and mm/min
G91
G21
G94

M98 P"homez.g"

; Move quickly to X and Y axis endstops and stop there (first pass)
G53 G1 H1 X{-(move.axes[0].max - move.axes[0].min + global.miloHomingDist) } Y{ move.axes[1].max - move.axes[1].min + global.miloHomingDist } F{global.miloHomingSpeedFast}

; Move away from X and Y endstops
G53 G1 H2 X{global.miloHomingDist} Y{-global.miloHomingDist}

; Repeat X and Y home at low speed. Do not move further than
; 2 * global.miloHomingDist further than the expected endstop locations.
G53 G1 H1 X{-global.miloHomingDist*2} Y{global.miloHomingDist*2} F{global.miloHomingSpeedSlow}

; Absolute positioning
G90
