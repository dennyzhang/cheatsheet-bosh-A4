# Create bosh release tar from source code

1. git clone the code

```
git clone git@github.com:XXX/XXX-release.git
```

2. Go to the folder and prepare private.yml

We need private.yml to hold credentials.

Thus we can download files from external resources. e.g, google buckets.
```
cd XXX-release

cat > config/private.yml <<EOF
---
blobstore:
  provider: s3
  options:
    access_key_id: GOOGXXX
    secret_access_key: c9EcPLbysjpQzhEkXXX
EOF
```

Link: https://bosh.io/docs/release-blobs/

3. Run bosh command to create release

```
cd XXX-release
bosh create-release --tarball=myrelease.tgz
```

4. [Optional] Upload bosh release to your bosh director

```
bosh -n upload-release myrelease.tgz

# Confirm bosh release is ready and get the version

bosh releases
```
