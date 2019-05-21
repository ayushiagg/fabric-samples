# import utils
. scripts/utils.sh

# Invoke chaincode on peer0.org1 and peer0.org2
echo "Sending invoke transaction on peer0.org1 peer0.org2..."
chaincodeInvoke 0 1 0 2
