variable project_id {
  description = "Projects to build resources."
  type        = string
}

variable region {
  description = "Region in which to build the resource."
  default     = "asia-northeast1"
  type        = string
}

variable credentials_path {
  description = "Path of the authentication information file."
  type        = string
}

variable "my_domain" {
  description = "My Domain."
  type        = string
}