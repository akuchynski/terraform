locals {
  config = data.terraform_remote_state.kubeconfig.outputs.kubeconfig
}

terraform {
  required_providers {
    kubernetes = {
      source = "kubernetes"
    }
  }
}

provider "kubernetes" {
  config_path = "~/environment/${split("/", local.config[0])[1]}"
}