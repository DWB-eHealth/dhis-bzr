DIRECTORY="trunk"
COMMIT_SHA="97e2b7c95969430bb43115c32f6b3a25000008fd"

if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  git fetch && git checkout $COMMIT_SHA;
else
  git clone git@github.com:dhis2/dhis2-core.git $DIRECTORY;
  cd $DIRECTORY;
  git checkout $COMMIT_SHA;
fi
