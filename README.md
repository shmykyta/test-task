# Structured terraform code for GCP VM from scratch

Provisioning basic infrastructure on Google Cloud Platform with Terraform.

## Init
1. Install Google Cloud SDK and Terraform.
```bash
brew update
brew cask install google-cloud-sdk
brew install terraform
```
2. Login to your GCP account `gcloud auth login`
3. Fork the repository
4. Apply the components in correct sequence or use `deploy.sh` bash script.

## Components and deploy queue
 
- global
   - backend_bucket -> should be deployed first to keed terraform state.
   - network -> creates network and subnetwork with single firewall rule (subnets and rules could be extended)
   - iam -> create and assign roles to the groups with any roles or custom policies
- environment
   - dev -> basic virtual machine with firewall rules and bootstrap script to preinstall packages or do the configurations
- modules -> every module has own README

## Reuse

To reuse whole project for another PROJECT_ID need to change project variable in the following folders `global/backend_bucket` `global/network` `global/iam` `environment/dev` and do the `terraform apply` or use `deploy.sh` script

## Project structure
```
.
├── README.md
├── deploy.sh
├── environment
│   └── dev
│       ├── backend.tf
│       ├── main.tf
│       ├── output.tf
│       ├── provider.tf
│       ├── variables.tf
│       └── version.tf
├── global
│   ├── backend_bucket
│   │   ├── main.tf
│   │   ├── provider.tf
│   │   ├── variables.tf
│   │   └── version.tf
│   ├── iam
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── provider.tf
│   │   ├── variable.tf
│   │   └── version.tf
│   └── network
│       ├── backend.tf
│       ├── main.tf
│       ├── provider.tf
│       ├── variables.tf
│       └── version.tf
└── modules
    ├── README.md
    ├── firewall
    │   ├── README.md
    │   ├── main.tf
    │   ├── variables.tf
    │   └── version.tf
    ├── network
    │   ├── README.md
    │   ├── main.tf
    │   ├── variables.tf
    │   └── version.tf
    └── virtual_machine
        ├── README.md
        ├── main.tf
        ├── output.tf
        ├── template
        │   └── bootstrap.sh
        ├── variables.tf
        └── version.tf
```