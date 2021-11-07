
export CFITSIOROOT=${PREFIX}
export METISROOT=${PREFIX}
export SUITESPARSEROOT=${PREFIX}
export TBB_INSTALL_DIR=${PREFIX}
cmake ${CMAKE_ARGS} -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_INSTALL_LIBDIR=lib -DPython_EXECUTABLE=$(which python) .
make
make install
if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" || "${CROSSCOMPILING_EMULATOR}" != "" ]]; then
ctest --output-on-failure
fi
