provider "kubernetes" {
  config_path = "~/.kube/config"
}

variable "service_name" {}

resource "kubernetes_namespace" "svc" {
  metadata {
    name = var.service_name
  }
}
