cd /home/azureuser/lwd/test/3layer
rm *.dat.*
echo "check files. File list:"
ls
echo "check algo_config:"
cat algo_config.dat
echo "check boundary.dat:"
cat boundary.dat
echo "check prior:"
cat prior_params.dat
cat prior_types.dat
mpirun -np 1 ../../src/tmcmc_lwd 
