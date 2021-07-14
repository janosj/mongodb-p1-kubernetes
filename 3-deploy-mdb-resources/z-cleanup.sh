echo "Deleting test MongoDB deployment..."
kubectl delete mdb mdb-persistent-standalone-1 -n mongodb
kubectl delete configmap cm-persistent-static-1 -n mongodb
kubectl delete pvc data-mdb-persistent-standalone-1-0 -n mongodb

echo
echo "MongoDB deployment deleted."

