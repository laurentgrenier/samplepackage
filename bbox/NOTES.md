# Mounting a volume 
Through this experiences, I'll try to mount a */data/packages* volume. 


## The busybox
The experiences are runned using a busybox. 

### Build the bbox
Follow the instructions bellow to build it and push it on your active GCP project. 
```bash
./build.sh
```

### Execute a shell into the bbox
```bash
kubectl run bbox --image=eu.gcr.io/genuine-grid-218613/bbox:latest -i --tty --rm
```

## The volume

* My first action is to create the physical-virtual volume on kubernetes 
```yaml
kind: PersistentVolume
apiVersion: v1
metadata:
  name: pypiserver-volume
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 10Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/data/packages"
```

* Then, I have created a claim to allow access from a Kubernetes pod.
```yaml
kind: PersistentVolumeClaim
apiVersion: v1
metadata:
  name: pypiserver-volume-claim
spec:
  storageClassName: manual
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 3Gi

```
 
* I have updated the _Dockerfile_ of my bbox to mount the created volume
```dockerfile
VOLUME          /data/packages
``` 

* I build my pod and push it on the container registry 
```bash
./build.sh
``` 

* I check if the volume is mounted
```bash
df -h
# /dev/sda1                94.3G      2.9G     91.4G   3% /data/packages
```
