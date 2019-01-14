 #!/bin/bash

# Create a RF100XL TFT firmware update package from Github and the Conrad sources 
# Get latest MKS-TFT firmware from Github
# Get Renkforce logo from the Conrad package on their HP
# Update mks_config.txt with bvalues for RF100XL printer

# Names of bmp can be found in:
# http://osoyoo.com/driver/MKS-TFT-photo-of-description.pdf

# Latest firmware at:
# https://github.com/makerbase-mks/MKS-TFT/tree/master/MKS-TFT2.8-3.2
# Parsing needed to find RAR with firmware like:
# https://github.com/makerbase-mks/MKS-TFT/blob/master/MKS-TFT2.8-3.2/TFT28_32_v3.0.3%20Release%20file.rar

# Conrad version of the TFT firmware - needed for the renkforce logo - is at:
# https://produktinfo.conrad.com/datenblaetter/1500000-1599999/001592620-up-01-en-FIRMWARE_RENKFORCE_RF100_XL_3D_DRUCKER.zip
# Take mks_pic/bmp_logo.bin


# RF100XL has inverted X an Z axis - easiest solution is to switch images...
mv bmp_xAdd.bin bmp_xDec_.bin
mv bmp_xDec.bin mv bmp_xAdd.bin
mv bmp_xDec_.bin bmp_xDec.bin

mv bmp_zAdd.bin bmp_zDec_.bin
mv bmp_zDec.bin mv bmp_zAdd.bin
mv bmp_zDec_.bin bmp_zDec.bin


