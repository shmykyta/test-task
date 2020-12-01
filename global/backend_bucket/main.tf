resource "google_storage_bucket" "tf_state" {
  name          = var.bucket_name
  location      = var.region
  storage_class = "MULTI_REGIONAL"
  versioning {
    enabled = true
  }
}