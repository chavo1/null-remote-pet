data "random_pet" "server" {
  backend = "atlas"
  config {
      name = "chavo4/random_pet"
  }
}

resource "null_resource" "server" {
  provisioner "local-exec" {
    command = "echo ${data.random_pet.server.id}"
  }
}
