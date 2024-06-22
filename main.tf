module "wordpress" {
  source    = "farrukh90/release2/helm"
  namespace = "default"
  name      = "wordpress"
  wait      = false
  chart     = "./application"
  values = []
}
