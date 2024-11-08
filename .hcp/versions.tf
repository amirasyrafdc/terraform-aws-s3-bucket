terraform {
  cloud {
    organization = "datacom-nz-aws"

    workspaces {
      name    = "module-s3"
      project = "terraform-modules"
    }
  }

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.58.1"
    }
  }

  required_version = "~> 1.9"
}
