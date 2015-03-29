#!/bin/bash

export LDFLAGS="-L$PREFIX/lib -lgfortran"

$PYTHON setup.py install
