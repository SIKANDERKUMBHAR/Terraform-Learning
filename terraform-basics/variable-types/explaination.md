Sure, here is the explanation formatted for a Markdown (`.md`) file:

```markdown
# Terraform Variables and Outputs

This Terraform configuration consists of variable definitions and output definitions spread across three files: `username.tf`, `age.tf`, and `main.tf`.

## username.tf

```hcl
variable "username" {
  type = string
  description = "Please Enter your name in String"
  #default = "Sikander"
}
```
Defines a variable named `username`:
- **type**: Specifies that the variable should be a string.
- **description**: Provides a description for the variable.
- **default** (commented out): A default value "Sikander" is provided but commented out. This means a value must be provided unless the default is uncommented.

## age.tf

```hcl
variable "age" {
  type = number
  description = "Please Enter your age in Integer"
  #default = 0
}
```
Defines a variable named `age`:
- **type**: Specifies that the variable should be a number.
- **description**: Provides a description for the variable.
- **default** (commented out): A default value of 0 is provided but commented out. This means a value must be provided unless the default is uncommented.

## main.tf

```hcl
output "printage" {
  value = "Your age Is ${var.age}"
}

output "printName" {
  value = "Your Name Is ${var.username}"
}
```
Defines two output blocks:
- **printage**: Outputs the value of the `age` variable in the format "Your age Is <age>".
- **printName**: Outputs the value of the `username` variable in the format "Your Name Is <username>".

## Usage

To use this configuration, you will need to provide values for the `username` and `age` variables, either through a `terraform.tfvars` file, command-line flags, or environment variables. After running `terraform plan` and `terraform apply`, Terraform will output the values of the `username` and `age` variables.

```sh
terraform plan --var "username=YourName" --var "age=YourAge"
terraform apply --var "username=YourName" --var "age=YourAge"
```
Replace `YourName` and `YourAge` with your actual name and age.

## Expected Output

After applying the configuration, you should see the following output:

```
Outputs:

printName = "Your Name Is YourName"
printage = "Your age Is YourAge"
```
