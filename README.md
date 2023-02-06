# k8s_lab


# traefik-k8s
Will set up traefik in a separate namespace

kubectl apply -f 00-role.yml \
              -f 00-account.yml \
              -f 01-role-binding.yml \
              -f 02-traefik.yml \
              -f 02-traefik-services.yml

# route-by-host
Quick example of a deployment/svc/ingress with conditional routing

kubectl apply -f 03-whoami.yml \
              -f 03-whoami-services.yml \
              -f 04-whoami-ingress.yml

If you've got no way to set your own DNS, set it up manually on /etc/hosts like that

# 192.168.1.13 bar.mydomain.org bar
<<your_ip>> bear.kubectl
<<your_ip>> moose.kubectl 

Your lb with respond differently based on what's on the header.



# generic commands

kubectl get svc --all-namespaces -o wide
