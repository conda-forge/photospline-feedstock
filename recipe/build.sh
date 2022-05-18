
export CFITSIOROOT=${PREFIX}
export METISROOT=${PREFIX}
export SUITESPARSEROOT=${PREFIX}
export TBB_INSTALL_DIR=${PREFIX}
cmake ${CMAKE_ARGS} -DPython_EXECUTABLE=$(which python) .
make
make install
