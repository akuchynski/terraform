terraform {
  cloud {
    organization = "terraform-mtc-course"

    workspaces {
      name = "mtc-k8s"
    }
  }
}