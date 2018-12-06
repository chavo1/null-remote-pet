data "terraform_remote_state" "server" {
  backend = "atlas"
  config {
      name = "chavo4/random_pet"
  }
}

resource "null_resource" "server" {
  provisioner "local-exec" {
      command = "echo ${data.terraform_remote_state.server.pet_name}"
  }
}
