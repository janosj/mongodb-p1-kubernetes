# Deleting K8s resources and their persistent volume claims
# doesn't always seem to delete the associated files from these directories.
# Highly recommended to run this on each node before redeploying,
# to ensure a clean slate.

rm -rf /tmp/data01/*
rm -rf /tmp/data02/*
rm -rf /tmp/data03/*
rm -rf /tmp/data04/*
rm -rf /tmp/data05/*
rm -rf /tmp/data06/*

