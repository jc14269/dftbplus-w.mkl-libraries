echo "!!!!!About to install intel, only need mkl libraries, so change installation to only include mkl libraries!!!!"
read -n 1 -s -r -p "Press any key to continue"

cd parallel_studio_xe_2019_update5_cluster_edition_online
./install.sh

#Once mkl libraries have been installed
source ~/intel/mkl/bin/mklvars.sh intel64
echo "If $MKLROOT is set libraries will be linked"
read -n 1 -s -r -p "Press any key to check if MKLROOT is set"
echo $MKLROOT

cd
cd dftbplus/
cp -r ../make.arch .
mkdir _build
make -j

echo "Checking if mkl libraries have been linked"
read -n 1 -s -r -p "Press any key to check mkl libraries are linked"
ldd _build/prog/dftb+/dftb+

echo "If mkl libraries are linked, well done!!!"

echo "dftb+ executable can be found in /dftbplus/_build/prog/dftb+/"

read -n 1 -s -r -p "Press any key to exit"
