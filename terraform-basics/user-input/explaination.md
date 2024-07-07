# Explanation of `terraform plan --var "name=sikander"`

The command `terraform plan --var "name=sikander"` is used to create an execution plan for your Terraform configuration while providing a value for a variable from the command line.

## Command Breakdown

- **`terraform plan`**:
  This is the command used to generate an execution plan. This plan shows what actions Terraform will take to reach the desired state of the configuration defined in your Terraform files. It is used to preview changes before applying them to avoid any unintended modifications.

- **`--var "name=sikander"`**:
  This flag is used to pass a value for a variable directly from the command line. In this case, it sets the variable `name` to the value `sikander`.

## How It Works

1. **Variable Definition**:
   In your Terraform configuration, you define a variable named `name` as follows:
   ```hcl
   variable "name" {}


```markdown
# Terraform Variable and Output Definition

This Terraform file (`userinput.tf`) consists of a variable definition and an output definition.

## Variable Definition

```hcl
variable "name" {}
```
Defines a variable named `name`. You will need to provide a value for this variable when running Terraform commands.

## Output Definition

```hcl
output "printname" {
  value = var.name
}
```
Defines an output named `printname` that will print the value of the `name` variable.

## Steps to Run

### Initialize Terraform

Run the following command to initialize your Terraform working directory:

```sh
terraform init
```

### Plan the Infrastructure

Run the following command to create an execution plan. This will show you what Terraform will do when you apply the configuration:

```sh
terraform plan
```

When prompted, provide a value for the `name` variable, for example:

```sh
var.name = "YourName"
```

### Apply the Configuration (Optional)

To actually apply the configuration and see the output, you can run:

```sh
terraform apply
```

When prompted, provide the same value for the `name` variable.

## Example File

```hcl
variable "name" {
}

output "printname" {
  value = var.name
}
```

## Expected Output

After running `terraform apply` and providing a value for `var.name`, Terraform will output the value of the `name` variable as specified in the `printname` output.
```




