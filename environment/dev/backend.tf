terraform {
  backend "gcs" {
    bucket = "test-terraform-state-twingate-hometask"
    prefix = "environment/dev"
  }
}