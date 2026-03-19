terraform {
  backend "s3" {
    bucket       = "terraform-eks-2-17-2026"
    key          = "terraform-eks-2-17-2026/staging"
    region       = "us-west-1"
    use_lockfile = true
  }
}