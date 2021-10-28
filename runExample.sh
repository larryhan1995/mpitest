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
echo "check source file"
cat /home/azureuser/.bashrc

#echo "run single process"
#tmcmc_lwd
