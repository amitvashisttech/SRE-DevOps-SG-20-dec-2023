resource "kubernetes_namespace" "ns" {
  metadata {
    name = "myapp"
  }
}
