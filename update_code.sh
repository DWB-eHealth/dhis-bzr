DIRECTORY="tw-trunk"
if [ -d "$DIRECTORY" ]; then
	cd $DIRECTORY;
	bzr update;
else
	 #bzr branch lp:~dhis2-devs-core/dhis2/2.14 $DIRECTORY;
	 bzr branch lp:~kiran-f/dhis2/dhis2 $DIRECTORY;
     cd $DIRECTORY;
fi
