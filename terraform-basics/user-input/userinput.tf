
# Define an output block named "printname"
output "printname" {
  # Set the value of this output to the value of the variable "name"
  value = var.name
}



# Define an output block named "printname2"
output "printname2" {
  
  # Set the value of this output to a string that includes a fixed message and the value of the variable "name"
  value = "Hello the User Input is : ${var.name}"
}