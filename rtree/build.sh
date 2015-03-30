#!/bin/bash

if [ `uname` == Darwin ]; then
    # On OS X, the only way to build packages currently is by having
    # DYLD_FALLBACK_LIBRARY_PATH set. We do not use DYLD_LIBRARY_PATH because that
    # screws up some of the system libraries that have older versions of libjpeg
    # than the one in Anaconda. DYLD_FALLBACK_LIBRARY_PATH will only come
    # into play if it cannot find the library via normal means. The default comes
    # from 'man dyld'.
    export DYLD_FALLBACK_LIBRARY_PATH=$PREFIX/lib:$(HOME)/lib:/usr/local/lib:/lib:/usr/lib
fi

$PYTHON setup.py install
