# Commands

Because .json to terraform was used, it will be necessary to point to start it.

terraform init

terraform validate (optional)

terraform plan -var-file="vm.tfvars.json"

**if everything is ok you can run apply**

terraform apply -var-file="vm.tfvars.json"

success

