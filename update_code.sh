DIRECTORY="trunk"
COMMIT_SHA="58094d2ef1b6d33d6d6e8f6423eda814c140a236"

if [ -d "$DIRECTORY" ]; then
  cd $DIRECTORY;
  git fetch && git checkout $COMMIT_SHA;
else
  git clone git@github.com:DWB-eHealth/dhis2-core.git $DIRECTORY;
  cd $DIRECTORY;
  git checkout $COMMIT_SHA;
fi
