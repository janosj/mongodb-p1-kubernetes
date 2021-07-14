# Creates directories to be used by static persistent volumes.
# Run on each K8s cluster node.
# Again, dynamic storage is the way to go here.
# This is a quick config used for testing only.
# Also note these directories are made world readable/writeable.

mkdir /tmp/data01
mkdir /tmp/data02
mkdir /tmp/data03
mkdir /tmp/data04
mkdir /tmp/data05
mkdir /tmp/data06
chmod 777 /tmp/data*

