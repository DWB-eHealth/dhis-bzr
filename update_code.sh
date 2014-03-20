DIRECTORY="dhis2"
if [ -d "$DIRECTORY" ]; then
	cd $DIRECTORY;
	bzr update;
else
	 bzr branch lp:~dhis2-devs-core/dhis2/2.14 $DIRECTORY;
fi
