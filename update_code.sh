DIRECTORY="trunk"
COMMIT_SHA="ba0e775888c12209d2edd6a7bc586bc7e92480c4"

if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  git fetch && git checkout $COMMIT_SHA;
else
  git clone git@github.com:DWB-eHealth/dhis2-core.git $DIRECTORY;
  cd $DIRECTORY;
  git checkout $COMMIT_SHA;
fi
