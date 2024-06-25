# Usage
### Please add the following code
```
module "app" {
  source  = "moldangrus/release/helm"
  namespace = "default"
  name      = "wordpress"
  wait      = false
  chart     = "./application"
  values = []
}
```