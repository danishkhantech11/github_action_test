# main.tf

# Define a variable
variable "example_variable" {
  type    = string
  default = "Hello, Terraform!"
}

# Print the value of the variable using the output block
output "output_example" {
  value = var.v1
}

output "output_example" {
  value = var.v2
}
