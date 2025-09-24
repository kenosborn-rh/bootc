Basic Tutorial for building Base bootc Image for RHEM

Pre-requisites

1 'build' workstation/vm with podman installed \
2 [Activation Key](https://console.redhat.com/insights/connector/activation-keys#SIDs=&tags=) (RHEL Subscription) needed to be able to authenticate to registry.redhat.io (in order to pull rhel bootc image(s)) \
3 Need to be able to authenticate against whatever downstream repo you are pulling the Edge Manager agent from \
5 Need Edge Manager login access in order to utilize flightctl cli to create enrollment 'config.yaml' (early binding) \
6 (Optional) Need an OCI registry to publish image to (e.g. quay.io, etc.)

Documentation for building images is [here](https://docs.redhat.com/en/documentation/red_hat_advanced_cluster_management_for_kubernetes/2.13/html/edge_manager/edge-mgr-intro#edge-mgr-build)
