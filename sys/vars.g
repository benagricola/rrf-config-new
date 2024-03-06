; vars.g - Global variables used to configure the RRF firmware for Milo.

; Machine name. Used in the web interface to identify the machine.
global miloMachineName = "Millennium Machines Milo"

; Password for Duet Web Control
global miloUIPassword = "rrf"

; Set WiFi Mode. Set to true to enable AP mode, default
; is client mode.
global miloAPMode = false

; Direction of motors for X, Y and Z axes.
; Note the default is BACKWARDS, as the Fly CDYv3
; requires this for the axes to move in the right direction.
global miloDriveDir = { 0, 0, 0 }

; Current for motor drivers on X, Y and Z axes.
global miloDriveCurrent = { 1600, 1600, 1200 }

; Percentage of the current to apply to the motors when
; they are not moving. This is especially important for
; the Z axis, as this will spend some time in standstill
; while machining at a particular level and it is likely
; that the driver will overheat if the current is not
; reduced appropriately.
global miloDriveStillCurrent = { 20, 20, 10 }

; Machine speed limits in mm/min for X, Y and Z axes.
global miloRapidSpeed = { 2000, 2000, 1200 }

; Machine acceleration in mm/sec^2 for X, Y and Z axes.
; Note that this is in mm/sec^2, not mm/min^2 like the other
; speed settings! This is an RRF peculiarity.
global miloAcceleration = { 600, 600, 400 }

; Machine jerk (allowable instantaneous speed change)
; in mm/min for X, Y and Z axes.
global miloJerk = { 400, 400, 200 }

; Homing speed limit in mm/min. The first value is an initial speed,
; used to find the rough location of the endstop, and the second
; value is a slower speed used to home more accurately.
global miloHomingSpeed = { 1200, 180 }

; Homing distance - the distance in millimeters to back-off after
; activating each endstop, before repeating the homing operation
; at a lower speed.
global miloHomingDist = 5

; Pin names for defining the board functionality in the following order:
; X endstop
; Y endstop
; Z endstop
; Toolsetter
; Spindle Enable
; Spindle Speed (PWM)
; Touch Probe (Unset)
; Fan 0
; Fan 1
; Software E-Stop - (Unset - not used by LDO kit as the E-Stop kills all power)
global miloPins = { "xmin", "ymin", "zmin", "zmax", "Laser", "Neopixel", null, "fan0", "fan1", null }