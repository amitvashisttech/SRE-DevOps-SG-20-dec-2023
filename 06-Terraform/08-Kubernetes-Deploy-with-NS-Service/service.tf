resource "kubernetes_service" "example" {
  metadata {
    name = "my-py-web-svc"
    namespace = kubernetes_namespace.ns.metadata[0].name
  }
  spec {
    selector = {
      test = kubernetes_deployment.example.metadata.0.labels.test
    }
    port {
      port        = 8080
      target_port = 8081
      node_port   = 31007
    }

    type = "NodePort"
  }
}
