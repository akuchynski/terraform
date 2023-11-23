terraform {
  backend "remote" {
    organization = "terraform-mtc-course"

    workspaces {
      name = "mtc-dev-repo"
    }
  }
}