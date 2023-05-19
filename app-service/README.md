# Doc
Because .json to terraform was used, it will be necessary to point to start it.

If you want to change the names during creation, you only need to change the .json file.

example: "name_rg": "rg-app-service", just change in the second quote, "rg-app-service" = "name you want".

# Commands
terraform init

terraform validate (optional)

terraform plan -var-file="app.tfvars.json"

**if everything is ok you can run apply**

terraform apply -var-file="app.tfvars.json"

**success**

