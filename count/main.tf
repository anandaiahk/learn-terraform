
resource "null_resource" "fruits" {

  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo fruit name - ${var.fruits[each.key]}"
   // command = "echo fruit name - ${var.fruits[count.index]}"
  }

}
variable "fruits" {
  default = {
    apple = {
      name = "apple"
      count = 10
    }
    orange = {
      name = "orange"
      count = 200
    }
    banana = {
      name = "babana"
      count = 134
    }
  }

}