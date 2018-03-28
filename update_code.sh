DIRECTORY="trunk"
COMMIT_SHA="f9fd2c9be3d337c3eae7af9d20a1965d4a8f1330"

if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  git fetch && git checkout $COMMIT_SHA;
else
  git clone git@github.com:DWB-eHealth/dhis2-core.git $DIRECTORY;
  cd $DIRECTORY;
  git checkout $COMMIT_SHA;
fi
