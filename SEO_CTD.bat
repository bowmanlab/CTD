::Must change paths
::Modify SEO_CTD_DatCnv.psa so that it calls instrument calibration file
::Check time on CTD! Probably set all instruments and computer to UTC at this point.

:repeat_forever

::Operate CTD for 15 minutes with default naming scheme.
::This will execute in a separate terminal and the script will wait to proceed until execution is complete.
start /w /D "C:\Program Files (x86)\Sea-Bird\SeasaveV7" Seasave.exe /autostart=C:\Users\bowman-lab\Desktop\CTD\SEO_CTD.psa /u /autostop=15

::Convert any .hex format files according to the calibration data contained in the instrument calibration file, pointed to from the *DatCnv.psa file.
::This will execute in a separate terminal and the script will wait to proceed until execution is complete.
start /w /D "C:\Program Files (x86)\Sea-Bird\SBEDataProcessing-Win32" DatCnvW.exe /pC:\Users\bowman-lab\Desktop\CTD\SEO_CTD_DatCnv.psa /iC:\Users\bowman-lab\Dropbox\CTD_Data_v1\*.hex /s
goto repeat_forever
