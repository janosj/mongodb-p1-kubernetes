# This is unchanged from the public version.

echo
echo Creating mongodb namespace...
kubectl create namespace mongodb

echo verifying:
kubectl get namespace

# To DELETE:
# kubectl delete namespace mongodb
