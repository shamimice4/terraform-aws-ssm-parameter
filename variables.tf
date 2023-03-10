variable "overwrite" {
  description = "Overwrite an existing parameter"
  type        = bool
  default     = false
}

variable "parameters" {
  type = list(object({
    name        = string
    description = optional(string)
    type        = string
    value       = string
    key_alias   = optional(string)
    tags        = optional(map(string))
  }))
  default = [
    {
      name        = null
      description = null
      type        = null
      value       = null
      key_alias   = null
      tags        = null
    }
  ]
}



