
resource "null_resource" "fruits" {

  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo fruit name - ${each.key} - ${each.value}"
   // command = "echo fruit name - ${var.fruits[count.index]}"
  }

}

resource "null_resource" "fruits1" {

  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo fruit name - ${each.key} - ${each.value["count"]}"
    // command = "echo fruit name - ${var.fruits[count.index]}"
  }

}
variable "fruits1" {
  default = {
    apple = {
      name  = "apple"
      count = 10
    }
    orange = {
      name  = "orange"
      count = 200
    }
    banana = {
      name  = "babana"
      count = 134
    }
  }
}
  variable "fruits" {
    default = {
      apple  = 10
      orange = 200
      banana = 134
    }
    }


