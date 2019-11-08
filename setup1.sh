#!/bin/bash

#get A C-compiler
sudo apt update
sudo apt install build-essentials
sudo apt-get install manpages-dev
gcc --version
make -v

#install intel parallel studtio XE runtime for intel compiler
sudo apt-key add GPG-PUB-KEY-INTEL-PSXE-RUNTIME-2018

#install cmake
sudo apt-get -y install cmake
which cmake
cmake --version

#get LAPACK/BLAS librariess
sudo apt-get install libblas-dev liblapack-dev

#get mkl libraries
sudo apt install docker.io
sudo docker pull rcostheta/leelachesszero-mkl
sudo sudo docker exec -it $(sudo docker run -it -d -p 52062:22 rcostheta/leelachesszero-mkl) /file.sh


#get git
sudo apt-get install git

#obtain source code for dftb+
git clone https://github.com/dftbplus/dftbplus.git
cd dftbplus
git submodule update --init --recursive

cd

#unpack Intel mkl download
#tar -xzvf parallel_studio_xe_2019_update5_cluster_edition_online.tgz
tar -xzvf parallel_studio_xe_2019_update5_cluster_edition_online.tgz
#./extract.sh
#install Intel package, only mkl needed

echo "!!!!BEFORE INSTALLING MKL LIBRARIES YOU WILL NEED A CODE WHICH IS IN FILE code.txt!!!!"
