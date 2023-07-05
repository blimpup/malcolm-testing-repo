resource "null_resource" "foo2" {
  provisioner "local-exec" {
    command = "true"
  }
}
}
