# pull rhel 9.6 base bootc image
FROM registry.redhat.io/rhel9-eus/rhel-9.6-bootc:9.6

# install edge manager (flightctl) agent
RUN dnf --enablerepo rhacm-2.13-for-rhel-9-x86_64-rpms -y install flightctl-agent && \
    dnf -y clean all && \
    systemctl enable flightctl-agent.service && \
    systemctl mask bootc-fetch-apply-updates.timer

# install podman-compose (used by RHEM to orchestrate device app containers)
RUN dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm && \
    dnf -y install podman-compose && \
    dnf -y clean all && \
    systemctl enable podman.service

# 'early binding': embed pre-created config.yaml into image
ADD config.yaml /etc/flightctl/
