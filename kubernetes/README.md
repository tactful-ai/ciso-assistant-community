# CISO Assistant

CISO Assistant is a web application designed to assist in managing security operations.

## Installation

To install CISO Assistant, use the following Helm command:

`helm install ciso-assistant . -n <namespace>`

Replace <namespace> with your desired Kubernetes namespace.

## Accessing the Application

Since Ingress is mandatory, make sure that your Ingress resource is properly configured to route traffic to the application.


## Database Information:

CISO Assistant can use either PostgreSQL or SQLite as its database.

PostgreSQL

If You want to to use PostgreSQL, You can enable it from the values file.

SQLite

If using SQLite, no external configuration is needed.

## Admin Account Details

The default admin account is created during installation. You can retrieve the admin email and password using the commands below.

Admin Email: superuser@ciso-assistant.com

To retrieve the admin password from Kubernetes Secrets:

`kubectl get secret ciso-backend-secret -n <namespace> -o jsonpath="{.data.DJANGO_SUPERUSER_PASSWORD}" | base64 --decode`

## Uninstalling the Chart

To uninstall the deployment and its associated resources, use the following command:

`helm uninstall ciso-assistant -n <namespace>`

Thank you for using CISO Assistant! For additional information, please refer to the documentation.
