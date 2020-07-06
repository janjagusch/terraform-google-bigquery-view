variable "config_file" {
  type        = string
  description = "Path to the config.yaml"
}

variable "query_vars" {
  type        = map(string)
  description = "Values for placeholder variables in query"
  default     = {}
}
