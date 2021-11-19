echo "current location"
pwd
echo "cp work dir"
cp -r /home/azureuser/lwd/test/3layer ./
cd 3layer
rm algo_config.dat
wget http://github.com/larryhan1995/mpitest/raw/main/inputFiles/algo_config_1.dat ./
echo "current location"
pwd
echo "file list:"
ls
mv algo_config_1.dat algo_config.dat
echo "current configurations:"
cat algo_config.dat
echo "check PATH: $PATH"
export PATH=$PATH:/home/azureuser/lwd/src/
echo "check PATH after: $PATH"
echo "run 8 process"
mpirun -np 8 tmcmc_lwd
