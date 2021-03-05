# Solution

The terraform templates will create a linux vm and also a 1 node kubernetes cluster.

1. Run terraform

```bash
# login into azure subscription
$ az login
# create service principal and copy app id and password
$ az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<subscription_id>"
$ export TF_VAR_client_id=<service-principal-appid>
$ export TF_VAR_client_secret=<service-principal-password>

$ terraform init
$ terraform apply
```

2. Deploy nginx web server into aks cluster

```bash
$ ./deploy-nginx.sh
```

3. Once the pod is ready get external IP of nginx-service

```bash
$ kubectl describe svc nginx-service
```

4. curl http://<EXTERNAL_IP>/
