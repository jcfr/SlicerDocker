#!/bin/bash

set -ex

script_dir=$(cd $(dirname $0) || exit 1; pwd)

################################################################################
# Set up headless environment
source $script_dir/start-xorg.sh

#/usr/bin/x11vnc -forever -rfbport $VNCPORT -display :10 -shared -bg -auth none -nopw
#sleep 1

################################################################################
# start window manager
awesome &

################################################################################
# this needs to be last
exec "$@"