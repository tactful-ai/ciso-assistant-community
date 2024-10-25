# To install a chart for the first time:
helm install ciso-assistant-community . -n ciso-assistant

# To apply changes after modifying your chart:
helm upgrade ciso-assistant-community . -n ciso-assistant

# To uninstall a deployed Helm release:
helm uninstall ciso-assistant-community -n ciso-assistant

# To see all installed releases:
helm list -n ciso-assistant-community

# To get the status and details of a deployed release:
helm status ciso-assistant-community -n ciso-assistant

# To check the values currently used in the deployment:
helm get values ciso-assistant-community -n ciso-assistant

# To see the Kubernetes YAML generated by Helm (useful for debugging):
helm get manifest ciso-assistant-community -n ciso-assistant



# Advanced Helm Commands:
# Rollback to a previous version: If you need to roll back to a previous version of your release:
helm rollback ciso-assistant-community 1 -n ciso-assistant

# Dry run an upgrade: To preview changes before applying them:
helm upgrade ciso-assistant-community . -n ciso-assistant --dry-run

# Diff changes: If you want to see a difference between the current release and what would change:
helm diff upgrade <release-name> <chart-path> -n <namespace>
(You need the helm-diff plugin for this).

# Package a chart: To package your chart for distribution or reuse:
helm package .

# Lint a chart: To check your chart for errors and best practices:
helm lint .

# Template (output rendered manifest): To generate the Kubernetes YAML from your chart without applying it:
helm template ciso-assistant-community . -n ciso-assistant

# Debugging & Clean-up Commands:
# Helm history: To see the previous revisions of your release:
helm history ciso-assistant-community -n ciso-assistant

# Purge (clean up after uninstall): If Helm leaves behind resources, you can use this to ensure cleanup:
helm uninstall <release-name> --purge -n <namespace>

# Force upgrade: If you encounter issues with an upgrade, forcing it might help:
helm upgrade --force <release-name> <chart-path> -n <namespace>