### kubectl autoapplier for gitops

A simple image for appling kubectl manifests in a remote git repo onto the current cluster

See configmap and cronjob examples for further details

Should be built and stored in a private image registry, requires gpg.key for SOPS secret decryption
