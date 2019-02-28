resource "null_resource" "server" {
  provisioner "local-exec" {
    command = "echo hello"
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "null_resource" "server1" {
  provisioner "local-exec" {
    command = "echo hello1"
  }
}

resource "null_resource" "server2" {
  provisioner "local-exec" {
    command = "echo hello2"
  }
}
