a=0
rm -f nohup.out
while [ $a -lt 50 ] 
do
    b="$a"
    str="orderer$b.example.com"
    nohup docker exec $str "/var/hyperledger/fabric/orderer/elastico" &
    # increment the value 
    a=`expr $a + 1`
done
