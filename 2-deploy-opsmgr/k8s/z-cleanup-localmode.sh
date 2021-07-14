echo "Deleting OM..."
kubectl delete om ops-manager-localmode -n mongodb

echo "Deleting Ops Manager credentials..."
kubectl delete secret opsmgr-credentials -n mongodb
kubectl delete secret ops-manager-firstuser-secret -n mongodb

echo "Deleting Persistent Volume claims..."
kubectl delete pvc data-ops-manager-localmode-db-0 -n mongodb
kubectl delete pvc data-ops-manager-localmode-db-1 -n mongodb
kubectl delete pvc data-ops-manager-localmode-db-2 -n mongodb
kubectl delete pvc mongodb-versions-claim -n mongodb
kubectl delete pvc head-ops-manager-backup-daemon-0 -n mongodb

echo
echo "Ops Manager deleted."
echo "Note: Operator, CRDs, and MongoDB Namespace have NOT been deleted."
echo "Be sure to delete any files in the persistent volume directories on each K8s node."

