workspaces:

When we create cloud resources using Terraform configuration language, the resources are known to be created in the default workspace, by using terraform workspaces it gives us independent state file for each workspace.
In this example I will provision 2 vpc's with same configuration using workspaces.


terraform workspace create addanki
terraform workspace create ongole
terraform workspace show
terraform workspace select addanki
terraform workspace delete addanki
terraform workspace delete ongole
terraform plan -var-file=addanki-vpc.tfvars
terraform apply -var-file=ongole-vpc.tfvars


# passing custome var files
terraform plan -var-file="ongole-vpc.tfvars"
terraform plan -var-file="addanki-vpc.tfvars"

# workspaces

Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.

[! refer https://spacelift.io/blog/terraform-workspaces]




