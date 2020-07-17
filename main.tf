terraform {
  required_version = ">= 0.12"

  required_providers {
    null = "2.1.2"
  }
}



resource null_resource echo_dummy {
  provisioner local-exec {
    command = "echo HelloWorld"
  }

  triggers = {
    hack = "${timestamp()}"
  }
}
