#! /usr/bin/env bash
if [[ "$HPHP_HOME" == "" ]]; then
    echo "HPHP_HOME environment variable must be set!"
    echo 'export HPHP_HOME=/path/to/hhvm'
    exit 1
fi
ARG=1000
TIMEFORMAT="-v"
if [ "$1" != "" ]; then
    ARG="$1"
fi
if [ "$2" != "" ]; then
    TIMEFORMAT="--format=$2"
fi
/usr/bin/env time "$TIMEFORMAT" $HPHP_HOME/hphp/hhvm/hhvm test.hh "$ARG"
