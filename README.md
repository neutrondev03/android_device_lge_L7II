What is this?
This is the device tree that contains all recoveries I made for our L7II (CWM, PHILZ, TWRP).

How to use this?
It is easy. You need CM11 source code. Clone this repo under device/lge/p710.
Depending on the recovery you want (you already have CWM) you must go and download from git the android/bootable for the recovery you want.
Pleace it in bootable/recovery-Name_you_would_like. In BoardConfig.mk change RECOVERY_VARIANT to Name_you_would_like. 
The default RECOVERY_VARIANT is twrp6 because my folder is named recovery-twrp6. 
For all recoveries you want you need # Recovery Global flags. 
If you want to build anything other than TWRP then comment all the TWRP flags with # and uncomment the desired recovery.
For PHILZ you need all CWM + Philz.

Peace out! Neutrondev
