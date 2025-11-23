data "local_file"  "foo" {
  filename = "/tmp/mediumfile"
}

output "foobar" {
  value = data.local_file.foo.content_base64
}
