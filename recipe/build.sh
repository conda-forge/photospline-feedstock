
export CFITSIOROOT=${PREFIX}
export METISROOT=${PREFIX}
export SUITESPARSEROOT=${PREFIX}
export TBB_INSTALL_DIR=${PREFIX}
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_INSTALL_LIBDIR=lib -DPython_EXECUTABLE=$(which python) .
make
make install
ctest --output-on-failure
