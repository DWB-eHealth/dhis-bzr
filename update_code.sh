DIRECTORY="trunk"
if [ -d "$DIRECTORY" ]; then
	cd $DIRECTORY;
	bzr update;
else
    bzr branch lp:~dhis2-devs-core/dhis2/2.19 -r 19287 $DIRECTORY;
    cd $DIRECTORY;
fi
