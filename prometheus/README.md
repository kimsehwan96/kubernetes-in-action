# Install prometheus

```bash
kubectl apply -k . --server-side=true --force-conflicts
```

We can'y apply this from client-side because

```text
resource mapping not found for name: "prometheus" namespace: "prometheus" from ".": no matches for kind "Prometheus" in version "monitoring.coreos.com/v1"
ensure CRDs are installed first
Error from server (Invalid): error when creating ".": CustomResourceDefinition.apiextensions.k8s.io "prometheuses.monitoring.coreos.com" is invalid: metadata.annotations: Too long: must have at most 262144 bytes
```

above error occured.