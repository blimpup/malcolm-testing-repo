resource "terraform_data" "datum" {
  input = "round2"
}

resource "null_resource" "res" {
  triggers = {
    rev = "1"
  }
}
