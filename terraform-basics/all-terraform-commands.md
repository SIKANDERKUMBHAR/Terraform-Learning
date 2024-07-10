# Terraform Commands Explained

## terraform init

This command sets up the Terraform working directory and initializes the backend for storing state. It downloads the necessary provider plugins required for your configuration.

## terraform init -upgrade

This command not only initializes the Terraform working directory but also updates the provider plugins to the latest available versions.

## terraform validate

This command checks the syntax of your Terraform files to make sure they are correct and that all required variables are provided.

## terraform plan

This command creates an execution plan, showing what actions Terraform will take to change your infrastructure to match your configuration. It doesn't make any changes yet.

## terraform apply

This command applies the changes required to reach the desired state of the configuration. It will create, update, or delete resources as specified.

## terraform plan -out file-name

This command generates and saves an execution plan to a file named `file-name`. You can review the plan before applying it.

## terraform apply "file-name"

This command applies the changes as per the execution plan saved in the file `file-name`.

## terraform apply -auto-approve

This command applies changes without prompting for confirmation. It's useful for automation but should be used with caution.

## terraform fmt

This command formats the Terraform files in a standard way, making them easier to read and removing extra spaces.

## terraform refresh

This command updates the state file with the real-world resources, making sure it reflects the latest status.

## terraform apply -replace="aws_instance.web"

This command replaces the specified resource (`aws_instance.web`) even if no configuration changes have been made to it. It forces Terraform to destroy and recreate the resource.

## terraform destroy -target="aws_instance.web1"

This command destroys the specified resource (`aws_instance.web1`) without affecting other resources in your configuration.

