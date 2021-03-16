FROM pulumi/pulumi

RUN apt-get update && apt-get -y install jq libsecret-1-0 vim

RUN wget -qO- https://github.com/pulumi/kube2pulumi/releases/download/v0.0.8/kube2pulumi-v0.0.8-linux-amd64.tar.gz | tar -xvz -C /usr/local/bin kube2pulumi \
    && wget -qO- https://github.com/pulumi/crd2pulumi/releases/download/v1.0.5/crd2pulumi-v1.0.5-linux-amd64.tar.gz | tar -xvz -C /usr/local/bin crd2pulumi

ENTRYPOINT ["bash"]