DIRECTORY="trunk"
if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  bzr update;
else
  bzr branch lp:~dhis2-devs-core/dhis2/2.22 -r 21952 $DIRECTORY; 
  cd $DIRECTORY;
fi
