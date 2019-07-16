#! /bin/sh

# $FIREBASE_CREDENTIAL_BASE64: firebase deploy を行うService AccountのcredentialをBASE64にしたもの
# $PROJECT                   : --projectに渡す引数
# $ONLY                      : --onlyに渡す引数
# $EXCEPT                    : --exceptに渡す引数


OPTION=""

if [ -n "$PROJECT" ]; then
    OPTION="$OPTION --project $PROJECT"
fi

if [ -n "$ONLY" ]; then
    OPTION="$OPTION --only $ONLY"
fi

if [ -n "$EXCEPT" ]; then
    OPTION="$OPTION --except $EXCEPT"
fi

echo "$FIREBASE_CREDENTIAL_BASE64" | base64 -d > /cred.json

GOOGLE_APPLICATION_CREDENTIALS=/cred.json firebase deploy $OPTION
rm /cred.json
