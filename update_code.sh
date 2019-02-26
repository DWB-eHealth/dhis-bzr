DIRECTORY="trunk"
COMMIT_SHA="0376b9588c478478b86773c6c5a77d4af4bf2b9f"

if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  git fetch && git checkout $COMMIT_SHA;
else
  git clone git@github.com:dhis2/dhis2-core.git $DIRECTORY;
  cd $DIRECTORY;
  git checkout $COMMIT_SHA;
fi
