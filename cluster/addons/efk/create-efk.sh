#!/bin/bash
kubectl create -f service-account.yaml

kubectl create -f kubernetes.yml

ELASTICSEARCH_HOST=$(kubectl --namespace=kube-system get svc elasticsearch -o template --template={{.spec.clusterIP}})
echo "host is $ELASTICSEARCH_HOST"

#replace
sed -i -- "s/\${ELASTICSEARCH_HOST}/${ELASTICSEARCH_HOST}/g" fluentd-es-logging.yaml

sed -i -- "s/\${ELASTICSEARCH_HOST}/${ELASTICSEARCH_HOST}/g" kibana-controller.yaml

kubectl create -f fluentd-es-logging.yaml
kubectl create -f kibana-controller.yaml
