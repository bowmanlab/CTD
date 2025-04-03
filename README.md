# CTD
## File dependencies
Both .psa files expect the calibration settings at C:\Users\bowman-lab\Desktop\2023-05-03_CTD_calibration_settings.xmlcon

## Executable dependencies
C:\Program Files (x86)\Sea-Bird\SeasaveV7\Seasave.exe
C:\Program Files (x86)\Sea-Bird\SBEDataProcessing-Win32\DatCnvW.exe

## PSA files
SEO_CTD.psa controls how the data is collected and written. Data file path is determined by <DataFilePath> even when /u flag is used in command line.

SEO_CTD_DatCnv.psa controls how the hex files are converted to cnv files. The write location for the cnv files is determined by <OutputDir>.
