resource "google_storage_bucket" "tf_state" {
  name          = var.bucket_name
  storage_class = "MULTI_REGIONAL"
  versioning {
    enabled = true
  }
}
