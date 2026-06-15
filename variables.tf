# This file is the "field schema" the agent reads.
# Variables WITHOUT a default are REQUIRED -> the agent must ask the user for them.
# Variables WITH a default are optional.

variable "aws_region" {
  description = "AWS region to deploy into (e.g. us-east-1)"
  type        = string
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name (lowercase, 3-63 chars)"
  type        = string
}

variable "environment" {
  description = "Deployment environment: dev, staging, or prod"
  type        = string
}

variable "owner" {
  description = "Team or person who owns this resource"
  type        = string
}

variable "enable_versioning" {
  description = "Enable S3 bucket versioning"
  type        = bool
  default     = true
}
