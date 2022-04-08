terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "~> 4.0"
    }
  }
}

provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.current_user_ocid
  fingerprint      = var.api_fingerprint
  private_key_path = var.api_private_key_path
}

variable "region" {
  type = string
  default = "eu-frankfurt-1"
}

variable "tenancy_ocid" {
  type = string
}

variable "current_user_ocid" {
  type = string
}

variable "compartment_ocid" {
  type = string
}

variable "api_fingerprint" {
  type = string
}

variable "api_private_key_path" {
  type = string
}

variable "ssh_public_key" {
  type = string
}