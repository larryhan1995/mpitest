cat /proc/cpuinfo
wget http://github.com/larryhan1995/mpitest/raw/main/hello-world.c 
#wget http://github.com/larryhan1995/mpitest/raw/main/hostfile
mpicc hello-world.c -o hello-world 
echo "Run single process:"
./hello-world > output1.txt;
$AZ_BATCH_TASK_SHARED_DIR/hello-world

# Create host file
#batch_hosts=hosts.batch
#rm -rf $batch_hosts
echo "The AZ_BATCH_NODE_LIST: $AZ_BATCH_NODE_LIST"
echo "The AZ_BATCH_HOST_LIST: $AZ_BATCH_HOST_LIST"
echo "The AZ_BATCH_TASK_SHARED_DIR: $AZ_BATCH_TASK_SHARED_DIR"
echo "The AZ_BATCH_NODE_MOUNTS_DIR: $AZ_BATCH_NODE_MOUNTS_DIR"
#IFS=';' read -ra ADDR <<< "$AZ_BATCH_NODE_LIST"
#for i in "${ADDR[@]}"; do echo $i >> $batch_hosts;done
# Determine hosts to run on 
#src=$(tail -n1 $batch_hosts)
#dst=$(head -n1 $batch_hosts)
#echo "Src: $src"
#echo "Dst: $dst"
echo "Run two processes:"
# Run two node MPI tests
#mpirun -np 2 --host $src,$dst --map-by node ./hello-world > output2.txt
mpirun -np 2 --host $AZ_BATCH_HOST_LIST -wdir $AZ_BATCH_TASK_SHARED_DIR $AZ_BATCH_TASK_SHARED_DIR/hello-world > output2.txt
mpirun -np 2 --host $AZ_BATCH_HOST_LIST ./hello-world > output3.txt
