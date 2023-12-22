resource "kubernetes_namespace" "ns" {
  metadata {
    name = "terraform-app"
  }
}
