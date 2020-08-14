### kubectl autoapplier for gitops

A simple image for appling kubectl manifests in a remote git repo onto the current cluster

See `deploy` folder for example manifests

Should be built and stored in a private image registry, requires gpg.key for SOPS secret decryption
