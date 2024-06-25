# Usage
### Please add the following code
```
module "app" {
  source    = "moldangrus/release2/helm"
  namespace = "default"
  name      = "wordpress"
  wait      = false
  chart     = "./application"
  values = [<<EOF
replicaCount: 3
image:
  repository: wordpress
  pullPolicy: IfNotPresent
  # Override this image tag whose default is the chart appVersion.
  tag: "latest"
  EOF
  ]
}
```