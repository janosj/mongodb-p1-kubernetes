# This is the API key - it must be created in the Ops Manager UI
PUBLIC_KEY=AAAAAAAA
PRIVATE_KEY=11111111-2222-3333-4444-555555555555

echo
echo Creating secret...

kubectl -n mongodb create secret generic opsmgr-credentials --from-literal="user=$PUBLIC_KEY" --from-literal="publicApiKey=$PRIVATE_KEY"

echo
echo VERIFY:
kubectl get secrets -n mongodb

# To DELETE:
# kubectl delete secret opsmgr-credentials -n mongodb

