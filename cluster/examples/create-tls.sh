#!/bin/bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /tmp/tls.key -out /tmp/tls.crt -subj "/CN=k8s.cmos.cn"

crt=`base64 /tmp/tls.crt`
echo $crt > crt.txt
sed -i -- 's/ //g' crt.txt
crt=$(cat crt.txt)

key=`base64 /tmp/tls.key`
echo $key > key.txt
sed -i -- 's/ //g' key.txt  
key=$(cat key.txt)

echo "
apiVersion: v1
kind: Secret
metadata:
  name: k8s-secret
data:
  tls.crt: $crt
  tls.key: $key" > k8s-secret.yaml

#del useless txt
rm crt.txt key.txt
####create secret into k8s with domain k8s.cmos.cn
kubectl create -f k8s-secret.yaml
