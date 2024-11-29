provider "terraform" {
  required_version = ">= 1.0.0"
}
variable "food" {
  type = string
  default = "carrot"
  validation {
    //condition = contains(["carrot", "apple"], var.food)
    condition = can(regex("^[a-z]+$", var.food))
    error_message = "Variable contains numbers"
  }
}
resource "null_resource" "cond" {
  typeF = var.food == "carrot" ? "veggie" : "fruit"
}

output "foodType" {
  value = null_resource.cond.typeF
}