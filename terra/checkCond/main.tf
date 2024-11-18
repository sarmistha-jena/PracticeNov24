data "http" "terraform_io" {
  url = "https://www.terraform.io"
  lifecycle {
    postcondition {
      condition     = self.status_code == 201
      error_message = "${self.url} returned an unhealthy status code"
    }
  }
}


/*check "health_check" {
 *//* data "http" "terraform_io" {
    url = "https://www.terraform.io"
  }*//*

  assert {
    condition     = data.http.terraform_io.status_code == 201
    error_message = "${data.http.terraform_io.url} returned an unhealthy status code"
  }
}*/
