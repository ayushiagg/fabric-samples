a=0
docker exec -it orderer21.example.com bash
ps -ax | grep elastico | grep -v grep | head -n1|cut -d' ' -f4|xargs kill

docker exec orderer19.example.com bash -c "ps -ax | grep elastico | grep -v grep | head -n1|cut -d' ' -f4 | xargs kill"

while [ $a -lt 0 ] 
do
    b="$a"
    str="orderer$b.example.com"
    nohup docker exec $str "/var/hyperledger/fabric/orderer/elastico" &
    # increment the value 
    a=`expr $a + 1`
done
