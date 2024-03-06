; speed.g - Configure speed limits, acceleration and jerk.

; Configure acceleration
M201 X{global.miloAccelerationX} Y{global.miloAccelerationY} Z{global.miloAccelerationZ}

; Configure maximum speeds
M203 X{global.miloRapidSpeedX} Y{global.miloRapidSpeedY} Z{global.miloRapidSpeedZ}

; Configure jerk
M566 X{global.miloJerkX} Y{global.miloJerkY} Z{global.miloJerkZ}