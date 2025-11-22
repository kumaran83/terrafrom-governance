terraform -chdir=infrastructure init
terraform -chdir=infrastructure workspace select dev
terraform -chdir=infrastructure validate -var-file=env\dev\terraform.tfvars