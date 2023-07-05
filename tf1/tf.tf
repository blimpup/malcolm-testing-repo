resource "null_resource" "foo1" {
  provisioner "local-exec" {
    command = "false"
  }
}
