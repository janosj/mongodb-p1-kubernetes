echo
echo Installing MongoDB Enterprise Kubernetes Operator...

# Use public containers from quay.io.
# kubectl apply -f mongodb-enterprise.public-1.5.3.yaml -n mongodb

# Use containers from Platform One (repository1).
# Required modifications:
#   1: set all images to Registry1 images.
#   2: add credentials to the end of the file:
#      imagePullSecrets:
#      - name: registry1-credentials

kubectl apply -f mongodb-enterprise.modified-USE.yaml -n mongodb

echo Verify:
kubectl describe deployments mongodb-enterprise-operator -n mongodb

#output=wide tells you where the pod is running (i.e. which node)
kubectl get pods --namespace=mongodb --output=wide -w

echo
echo "Verify the right image was pulled from REGISTRY1:"
echo "  > kubectl describe pod -n mongodb <pod-name>"

echo 
echo "Verify the image looks correct (e.g. check /etc/redhat-release):"
echo "  > kubectl exec -it -n mongodb <pod-name> -- /bin/bash"

# To DELETE:
# kubectl delete deployment mongodb-enterprise-operator -n mongodb

