data "tfe_organization" "this" {
  name = "datacom-nz-aws"
}

data "tfe_github_app_installation" "this" {
  name = "amirasyrafdc"
}

resource "tfe_registry_module" "this" {
  organization = data.tfe_organization.this.name

  vcs_repo {
    display_identifier = "amirasyrafdc/terraform-aws-s3-bucket"
    identifier         = "amirasyrafdc/terraform-aws-s3-bucket"
    tags               = true

    github_app_installation_id = data.tfe_github_app_installation.this.id
  }
}
