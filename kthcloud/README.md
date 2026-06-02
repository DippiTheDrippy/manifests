# KTHCLOUD Kubeflow

### **IMPORTANT: Please run all scripts from the repository root.**

## Structure

### Number-prefixed directories

All directores prefixed with numbers contain kustomization files and are supposed to be layered setup for kubeflow.

The outer `kustomization.yaml` file in the kthcloud dir contains all the layers directly. Currently the only working version.  
The layers are not currently working as there seems to be some missing dependenices in 00-foundation at the moment.

### Kind directory

Contains help script for creating a local kind cluster for testing the kubeflow setup.

### Setup directory

You must create a `.env` file for dex configuration.  
`.env-tmpl` is a template file with the values that need to be filled

Contains `setup_keycloak` script that will configure dex to integrate keycloak, will have to be re-run each time the .env file is changed as it will update corresponding env file in the dex configuration.

## Use

To start & stop (install & uninstall) the kubeflow setup, use the `install.sh` and `uninstall.sh` scripts available.
