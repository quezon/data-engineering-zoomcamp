variable "credentials" {
  description = "My Credentials"
  default     = "C:/Users/vorga/OneDrive/Documents/Organizations/DataTalksClub/data-engineering-zoomcamp/01-docker-terraform/1_terraform_gcp/rare-inquiry-412603-8c72019bc45e_google_credentials.json"
  #ex: if you have a directory where this file is called keys with your service account json file
  #saved there as my-creds.json you could use default = "./keys/my-creds.json"
}


variable "project" {
  description = "Project"
  default     = "rare-inquiry-412603"
}

variable "region" {
  description = "Region"
  #Update the below to your desired region
  default     = "us-central1"
}

variable "location" {
  description = "Project Location"
  #Update the below to your desired location
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  #Update the below to what you want your dataset to be called
  default     = "rareInquiry412603NYTaxi"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  #Update the below to a unique bucket name
  default     = "rare-inquiry-412603-terrabucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}