cat /proc/cpuinfo
wget http://github.com/larryhan1995/mpitest/raw/main/hello-world.c 
mpicc hello-world.c -o hello-world 
echo "Run single process:"
./hello-world > output1.txt;
echo "Run two processes:"
# Run two node MPI tests
mpirun -np 2 -N 2 ./hello-world > output2.txt
