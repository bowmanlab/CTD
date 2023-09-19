::This batch file executes the commands for continuously running the CTD and converting the hex files to cnv.

:repeat_forever

::Operate CTD for 15 minutes with default naming scheme.
::This will execute in a separate terminal and the script will wait to proceed until execution is complete.
start /w /D "C:\Program Files (x86)\Sea-Bird\SeasaveV7" Seasave.exe /autostart=C:\Users\bowman-lab\Desktop\CTD\SEO_CTD.psa /u /autostop=15

::Convert any .hex format files according to the calibration data contained in the instrument calibration file, pointed to from the *DatCnv.psa file.
::This will execute in a separate terminal and the script will wait to proceed until execution is complete. Files are written to the location specified in the psa file.
start /w /D "C:\Program Files (x86)\Sea-Bird\SBEDataProcessing-Win32" DatCnvW.exe /pC:\Users\bowman-lab\Desktop\CTD\SEO_CTD_DatCnv.psa /iC:\Users\bowman-lab\Desktop\CTD\CTD_Data_v1\*.hex /s

MOVE C:\Users\bowman-lab\Desktop\CTD\CTD_Data_v1\*.hex C:\Users\bowman-lab\Dropbox\CTD_Data_v1\
MOVE C:\Users\bowman-lab\Desktop\CTD\CTD_Data_v1\*.XMLCON C:\Users\bowman-lab\Dropbox\CTD_Data_v1\
MOVE C:\Users\bowman-lab\Desktop\CTD\CTD_Data_v1\*.hdr C:\Users\bowman-lab\Dropbox\CTD_Data_v1\

goto repeat_forever


