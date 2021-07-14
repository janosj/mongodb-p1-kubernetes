# This is unchanged from the public version,
# except that it uses the 1.5.3 version.

echo
echo "Creating MongoDB CustomResourceDefinitions..."

kubectl apply -f crds.public-1.5.3.yaml

echo Verifying:
kubectl get crd
#kubectl describe crd <crd-name>
#kubectl delete crd <crd-name>

