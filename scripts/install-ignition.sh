INSTFOLDER="/opt/ignition"
FILE="Ignition-8.0.10-linux-x64-installer.run"

#S3 Pull
aws s3 cp s3://ignition-code-repository/$FILE /tmp/

#Run the installer silently
sudo chmod +x /tmp/$FILE
sudo /tmp/$FILE --mode unattended --prefix $INSTFOLDER --unattendedmodeui none

#Cleanup
sudo rm /tmp/$FILE