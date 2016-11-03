DIRECTORY="trunk"
if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  bzr update;
else
  bzr branch lp:~tw-msf/dhis2/v222_api_patch -r 21958 $DIRECTORY;
  cd $DIRECTORY;
fi
