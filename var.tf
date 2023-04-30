variable "sample_string" {
  default = "hello word"
}
# declare variable
# print the variable
output "sample_string" {
  value = var.sample_string
}
output "sample_string1" {
  value = "var ofsample_string= ${var.sample_string}"
}
variable "sample_number" {
  default = 100
}
variable "sample_boolean" {
  default = true
}
variable "sample_list" {
  default = [
    100,
    "anand"
    true
    123
  ]
}
output "sample_list" {
  value = var.sample_list[1]
}