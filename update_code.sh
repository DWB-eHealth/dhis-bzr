DIRECTORY="trunk"
if [ -d "$DIRECTORY" ]; then
	cd $DIRECTORY;
	bzr update;
else
	 #bzr branch lp:~dhis2-devs-core/dhis2/trunk $DIRECTORY;
         bzr branch lp:~dhis2-devs-core/dhis2/2.19 $DIRECTORY;
	 #bzr branch lp:~tw-msf/dhis2/dhis2 $DIRECTORY;

     cd $DIRECTORY;
fi
