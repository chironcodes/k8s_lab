# k8s_lab


# Clone with submodules
git clone --recurse-submodules https://github.com/chironcodes/k8s_lab.git


# Copy your remote config 
```shell
scp -r user@192.168.x.x:.kube ~/
```
# traefik-k8s
Will set up traefik in a separate namespace

```shell
kubectl apply -f 00-role.yml \
              -f 00-account.yml \
              -f 01-role-binding.yml \
              -f 02-traefik.yml \
              -f 02-traefik-services.yml
```

# route-by-host
Quick example of a deployment/svc/ingress with conditional routing

```shell
kubectl apply -f 03-whoami.yml \
              -f 03-whoami-services.yml \
              -f 04-whoami-ingress.yml
```
If you've got no way to set your own DNS, set it up manually on /etc/hosts like that
```shell
>> sudo vi /etc/hosts
192.168.x.x bear.kubectl
192.168.x.x moose.kubectl 
```

Your lb with respond differently based on what's on the header.



# generic commands
```shell
kubectl get svc --all-namespaces -o wide
```

kubectl 