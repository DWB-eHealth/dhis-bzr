DIRECTORY="dhis217"
if [ -d "$DIRECTORY" ]; then
	cd $DIRECTORY;
	bzr update;
else
	 bzr branch lp:~dhis2-devs-core/dhis2/2.17 $DIRECTORY;
     cd $DIRECTORY;
fi
