variable "sample_string" {
  default = "hello word"
}
# declare variable
# print the variable
output "sample_string" {
  value = var.sample_string
}
