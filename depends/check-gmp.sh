#!/bin/sh
# check-gmp.sh by Timothy Redaelli (timothy@redaelli.eu)

[ -f /usr/include/gmp.h -o -f /opt/local/include/gmp.h -o -f /usr/local/include/gmp.h -o -f /opt/csw/include/gmp.h -o -f /usr/include/x86_64-linux-gnu/gmp.h ] || { echo "ERROR: Install gmp before continuing."; exit 1; }
