### This small repo clonse the other repos of the project, builds the containers and deploys everything.

* You only need Docker for this!

# Run With:

```bash
bash script.sh
```


# Admin keycloak cli

/opt/keycloak/bin/kcadm.sh config credentials --user $KC_BOOTSTRAP_ADMIN_USERNAME --password $KC_BOOTSTRAP_ADMIN_PASSWORD --server http://localhost:8080/auth --realm master
/opt/keycloak/bin/kcadm.sh set-password -r poc --username test --new-password test
/opt/keycloak/bin/kcadm.sh create users -r poc -s username=test -s enabled=true

# Info
https://www.keycloak.org/server/importExport
https://www.keycloak.org/server/all-config
https://www.keycloak.org/server/reverseproxy
https://github.com/little-pinecone/keycloak-in-docker/blob/master/keycloak/realms/realm-export.json