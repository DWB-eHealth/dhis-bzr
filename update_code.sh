DIRECTORY="trunk"
COMMIT_SHA="3fcd7487f27ce7566f6bb8de0192e6d399d4bf26"

if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  git fetch && git checkout $COMMIT_SHA;
else
  git clone git@github.com:DWB-eHealth/dhis2-core.git $DIRECTORY;
  cd $DIRECTORY;
  git checkout $COMMIT_SHA;
fi
