DIRECTORY="trunk"
if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  bzr update;
else
  bzr branch lp:~dhis2-devs-core/dhis2/2.23 -r 23044 $DIRECTORY;
  cd $DIRECTORY;
fi
