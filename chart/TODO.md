## To Do

- [] clean-up the labels and annotations and the names of objects to include the release name (use a helper.tpl from any standard chart)
- [] add instructions to secure the system using ingress (instead of Caddy)
- [] make it faster behind ingress by adjusting buffers, because the API is very chatty https://github.com/intuitem/ciso-assistant-community/issues/803#issuecomment-2357798851
- [] test evidence attachement and ensure ingress is ok with file uploads and downloads
- [] allow use of external postgres server (not the embedded chart)
- [] add github action to lint and package the helm chart (build.sh exists)
- [] add github action to deploy the packaged chart to a helm repo or oci repo
- [] use official bitnami postgres chart included as dependency instead of our own embedded postgres (wont be as reliable or up to date)
- [] create a pvc if user wants to use sqlite instead of postgres
- [] publish on artifact hub?
- [] generate docs for helm chart based on values file
- [] backend emails superuser's email for password reset. dont set a password and include this in docs
- [] allow autogen of superuser password or to supply password to be stored as secret
- [] assign recommended limits and requests
- [] close helm issue https://github.com/intuitem/ciso-assistant-community/issues/365
