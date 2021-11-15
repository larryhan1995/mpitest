echo "current location"
pwd
echo "cp work dir"
cp -r /home/azureuser/lwd/test/3layer ./
cd 3layer
echo "current location"
pwd
echo "file list:"
ls
echo "check PATH: $PATH"
export PATH=$PATH:/home/azureuser/lwd/src/
echo "check PATH after: $PATH"
echo "run two process"
mpirun -np 8 tmcmc_lwd
