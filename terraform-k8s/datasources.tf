data "terraform_remote_state" "kubeconfig" {
  backend = "remote"

  config = {
    organization = "terraform-mtc-course"
    workspaces = {
      name = "mtc-dev"
    }
  }
}