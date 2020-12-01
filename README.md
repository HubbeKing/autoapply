### kubectl autoapplier for gitops

A simple image for appling kubectl manifests in a remote git repo onto the current cluster

See `deploy` folder for example manifests

Should be built and stored in a private image registry, requires gpg.key for SOPS secret decryption

Container should have SOPS_PGP_FP env variable set, matching PGP key in gpg.key file.
This fingerprint is needed for SOPS to auto-detect the PGP key and decrypt properly.
