provider "google" {
  project = "citric-earth-199400"
  #region  = "europe-west1"
  #zone    = "europe-west1-b"

  region = "us-east1"
  zone = "us-east1-c"
}

resource "google_compute_disk" "vm_disk" {
  name  = "terraform-disk"
  type  = "pd-ssd"
  size  = 100
  zone  = "us-east1-c"
  image = "ubuntu-2204-lts"
  //snapshot = "snapshot-1"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "n1-standard-8"


  boot_disk {
    //source = google_compute_disk.vm_disk.name
    initialize_params {
      image = "ubuntu-2204-lts"
      //image = "ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"  # Replace "your-network-name" with the actual name of the network: gcloud compute networks list
    access_config {
      // Access configuration if needed
    }
  }

  // Adding GPU
  guest_accelerator {
    type = "nvidia-tesla-k80"
    count = 1  # You can specify the number of GPUs you want
  }

  // Disable live migration for GPUs instance do not support live migration
  scheduling {
    preemptible = false  //false if not but more expensive.
    on_host_maintenance = "TERMINATE"
  }
}

//TODO: New DeepLearning Image for Ubuntu 22.04 which is available in Google Cloud.
//TODO: Nvidia Cuda preinstalled in the image.

