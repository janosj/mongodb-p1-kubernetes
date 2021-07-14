# Don't use this except for testing.
# It deploys Ops Manager to a K8s cluster but does NOT configure Local Mode,
# which means you will not be able to subsequently deploy MongoDB clusters 
# without internet connectivity.

kubectl apply -f ops-manager.yaml -n mongodb

# To DELETE:
# kubectl delete om ops-manager -n mongodb

