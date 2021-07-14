# Deploys Ops Manager in local mode.
# Local Mode ensures you can subsequently deploy MongoDB clusters
# in disconnected environments.

# This is a VERY BASIC deployment for test purposes only.
# See the samples directory in the public repo for additional configuration options.

kubectl apply -f ops-manager-localMode.yaml -n mongodb

# Useful command for troubleshooting:
# kubectl logs ops-manager-localmode-0 -c mongodb-binaries-init-container -n mongodb

# To DELETE:
# kubectl delete om ops-manager -n mongodb

