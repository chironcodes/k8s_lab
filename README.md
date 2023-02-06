# k8s_lab


# traefik-k8s
Will set up traefik in a separate namespace

kubectl apply -f 00-role.yml \
              -f 00-account.yml \
              -f 01-role-binding.yml \
              -f 02-traefik.yml \
              -f 02-traefik-services.yml
