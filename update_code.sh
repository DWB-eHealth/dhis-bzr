DIRECTORY="trunk"
COMMIT_SHA="39d75a42025e68dfbb7cdca87acf8aa42382baae"

if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  git fetch && git checkout $COMMIT_SHA;
else
  git clone git@github.com:DWB-eHealth/dhis2-core.git $DIRECTORY;
  cd $DIRECTORY;
  git checkout $COMMIT_SHA;
fi
