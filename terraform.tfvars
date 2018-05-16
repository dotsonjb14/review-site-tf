terragrunt = {
  terraform = {
    source = "./main"
  }

  remote_state {
    backend = "s3"

    config {
      bucket  = "gfy-tf"
      key     = "gfy.tfstate"
      region  = "us-west-2"
      encrypt = true
    }
  }
}
