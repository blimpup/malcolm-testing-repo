resource "null_resource" "foo" {
  count = var.volume_count
}
