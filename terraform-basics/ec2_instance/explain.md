

# EC2 Instance Terraform Configuration

This Terraform configuration file is used to create an Amazon EC2 instance in the `ap-southeast-1` region. It specifies the provider, required provider versions, and the EC2 instance resource.

## Configuration Details

### `terraform` Block
```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.9.0"
    }
  }
}
```
- **`required_providers`**: Specifies the providers required by the configuration.
  - **`aws`**: Uses the AWS provider from the `hashicorp` namespace with version `5.9.0`.

### `provider` Block
```hcl
provider "aws" {
  region = "ap-southeast-1"
}
```
- **`provider`**: Configures the AWS provider.
  - **`region`**: Sets the region where resources will be created, in this case, `ap-southeast-1`.

### `resource` Block
```hcl
resource "aws_instance" "web" {
  ami           = "ami-060e277c0d4cce553"
  instance_type = "t2.micro"

  tags = {
    Name = "testing-terraform-instance"
  }
}
```
- **`aws_instance`**: Defines an EC2 instance resource.
  - **`ami`**: Specifies the Amazon Machine Image (AMI) ID used to launch the instance.
  - **`instance_type`**: Specifies the instance type, in this case, `t2.micro`.
  - **`tags`**: Adds a name tag to the instance, here it's set to `"testing-terraform-instance"`.

## Terraform Commands

### `terraform init`
Initializes a Terraform configuration. This command prepares the working directory by downloading and installing the necessary provider plugins.

```sh
terraform init
```
- **Purpose**: To set up the environment for Terraform to run the configuration.
- **Actions**:
  - Downloads the provider specified in the configuration.
  - Sets up the backend for storing the state file.

### `terraform plan`
Generates an execution plan, showing what actions Terraform will take to achieve the desired state defined in the configuration.

```sh
terraform plan
```
- **Purpose**: To preview the changes Terraform will make to the infrastructure.
- **Actions**:
  - Compares the current state with the configuration.
  - Outputs the planned actions without applying them.

### `terraform apply`
Applies the changes required to reach the desired state of the configuration. It creates, updates, or deletes resources as needed.

```sh
terraform apply
```
- **Purpose**: To apply the configuration and make the necessary changes to the infrastructure.
- **Actions**:
  - Executes the planned actions.
  - Prompts for confirmation before applying changes unless the `-auto-approve` flag is used.

### `terraform destroy`
Destroys the infrastructure managed by the configuration. It removes all resources defined in the configuration.

```sh
terraform destroy
```
- **Purpose**: To tear down the infrastructure managed by Terraform.
- **Actions**:
  - Prompts for confirmation before destroying resources unless the `-auto-approve` flag is used.
  - Deletes all resources defined in the configuration and updates the state file accordingly.


