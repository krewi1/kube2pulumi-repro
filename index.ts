import * as pulumi from "@pulumi/pulumi";
import * as kubernetes from "@pulumi/kubernetes";

const metallb_systemNamespace = new kubernetes.core.v1.Namespace("metallb_systemNamespace", {
    apiVersion: "v1",
    kind: "Namespace",
    metadata: {
        name: "metallb-system",
        labels: {
            app: "metallb",
        },
    },
});
