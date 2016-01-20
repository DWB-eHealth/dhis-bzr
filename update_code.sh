DIRECTORY="trunk"
if [ -d "$DIRECTORY" ]; then
	cd $DIRECTORY;
	bzr update;
else
    bzr branch lp:~tw-msf/dhis2/dhis2 -r 19288 $DIRECTORY
    cd $DIRECTORY;
fi
