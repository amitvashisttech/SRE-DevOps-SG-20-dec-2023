resource "kubernetes_pod" "test" {
  metadata {
    name = "terraform-example"
    namespace = kubernetes_namespace.ns.metadata[0].name
  }

  spec {
    container {
      image = "docker.io/nginx"
      name  = "my-nginx"

      env {
        name  = "environment"
        value = "test-k8s-terraform"
      }

      port {
        container_port = 80
      }

      liveness_probe {
        http_get {
          path = "/"
          port = 80
        }

        initial_delay_seconds = 3
        period_seconds        = 3
      }
    }

  }
}


