resource "kubernetes_deployment" "example" {
  metadata {
    name = "terraform-example"
    namespace = kubernetes_namespace.ns.metadata[0].name
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    replicas = 5

    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }

    template {
      metadata {
        labels = {
          test = "MyExampleApp"
        }
      }

      spec {
        container {
          image = "docker.io/amitvashist7/mypython-web-app:v4"
          name  = "example"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 8081
              }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }  
}
