locals {
  owners      = var.business_division
  environment = var.environment
  name        = "${var.business_division}-${var.environment}"
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
}

variable "food" {
  type = string
  default = "carrot"
}
resource "null_resource" "cond" {
  typeF = var.food == "carrot" ? "veggie" : "fruit"
}

output "foodType" {
  value = null_resource.cond.typeF
}