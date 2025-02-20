resource "null_resource" "foo" {
  count = 200000
}
