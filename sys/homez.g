; homez.g
; Homes Z.

; Relative positioning in mm and mm/min
G91
G21
G94

; Deselect current tool. G92 to set the Z height takes tool offsets
; into account, which can cause us to try and move outside of expected
; machine limits.
if { state.currentTool != -1 }
    echo { "Deselecting tool " ^ state.currentTool ^ " before homing Z" }
    T-1 P0

; Raise Z towards endstop at high speed
G53 G1 H1 Z{move.axes[2].max - move.axes[2].min + global.miloHomingDist} F{global.miloHomingSpeedFast}

; Move away from Z endstop
G53 G1 H2 Z{-global.miloHomingDist}

; Repeat Z home at low speed. Do not move further than
; 2 * global.miloHomingDist above the expected endstop location.
G53 G1 H1 Z{global.miloHomingDist*2} F{global.miloHomingSpeedSlow}

; Absolute positioning
G90

; Set Z position to axis maximum
G53 G92 Z{move.axes[2].max}