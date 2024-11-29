provider "terraform" {
  required_version = ">= 1.0.0"
}
variable "food" {
  type    = string
  default = "carrot"
  validation {
    //condition = contains(["carrot", "apple"], var.food)
    condition     = can(regex("^[a-z]+$", var.food))
    error_message = "Variable contains numbers"
  }
}
variable "exp" {
  default = "ooo"
}
locals {
  typeF = var.food == "carrot" ? "veggie" : "fruit"
  foods = try(tostring(var.exp), tolist(var.exp))
}

output "foodType" {
  value = local.typeF
}
output "foods_display" {
  value = local.foods
}