variable "home_compartment_id" {
  type        = string
  description = "the OCID of the compartment where the environment will be created. In general, this should be the Landing zone parent compartment."
}

variable "home_compartment_name" {
  type        = string
  description = "Landing Zone home compartment name"
}

variable "resource_label" {
  type        = string
  description = "Prefix used to avoid naming conflict"
}

variable "enable_cloud_guard" {
  type        = bool
  description = "true if you don't have cloud guard enabled, false if you've already have cloud guard enabled."
}

variable "environment_prefix" {
  type        = string
  description = "the 1 character string representing the environment eg. P (prod), N (non-prod), D, T, U"
}

variable "tenancy_ocid" {
  type        = string
  description = "The OCID of tenancy"
}

variable "cloud_guard_target_tenancy" {
  type        = bool
  description = "true if cloud guard targets to tenancy, false if cloud guard targets to Landing Zone home compartment"
}

variable "region" {
  type        = string
  description = "The OCI region"
}

variable "security_compartment_id" {
  type        = string
  description = "The OCID of security compartment"
}

variable "environment_compartment_id" {
  type        = string
  description = "The OCID of environment compartment"
}

// Bastion Variables
variable "bastion_target_subnet_id" {
  type        = string
  description = "The OCID of the subnet that the bastion connects to"
}

variable "bastion_client_cidr_block_allow_list" {
  type        = list(string)
  description = "A list of address ranges in CIDR notation that you want to allow to connect to sessions hosted by this bastion."
}

variable "enable_bastion" {
  type        = bool
  description = "Option to enable bastion service"
}

// Vault & Key Variables
variable "vault_type" {
  type        = string
  description = "The type of vault to create. "
}

variable "replica_region" {
  type        = string
  description = "the region to be created replica to."
}

variable "enable_replication" {
  type        = bool
  description = "Option to enable vault replication"
}

variable "create_master_encryption_key" {
  type        = bool
  description = "Option create master encryption key"
}
variable "is_baseline_deploy" {
  type        = bool
  description = "TagNameSpace Optimization: Enable this flag to disable dependent module TagNameSpace Tag Creation."
}