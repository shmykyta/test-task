output "vm_ip" {
  description = "Virtual machine external IP"
  value       = google_compute_address.vm.address
}