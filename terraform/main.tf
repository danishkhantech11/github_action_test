# main.tf

# Define a variable
variable "example_variable" {
  type    = string
  default = "Hello, Terraform!"
}

# Print the value of the variable using the output block
output "output_example1" {
  value = var.v1
}

output "output_example2" {
  value = var.v2
}
