echo "$(terraform output kube_config)" > ./azurek8s
export KUBECONFIG=./azurek8s
kubectl apply -f nginx-deployment.yaml
