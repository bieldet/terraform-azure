# Doc
Because .json to terraform was used, it will be necessary to point to start it.

If you want to change the names during creation, you only need to change the .json file.

example: "resource_group_name": "teste-terraform", just change in the second quote, "resource_group_name" = "name you want".

It will be necessary to change the declarations of the virtual machine information. as machine type and version, in the main.tf file.


# Commands
terraform init

terraform validate (optional)

terraform plan -var-file="vm.tfvars.json"

**if everything is ok you can run apply**

terraform apply -var-file="vm.tfvars.json"

**success**

