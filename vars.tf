# Configure these variables

variable "sample_var" {
  description = "A sample_var to pass to the template."
  default     = "hello"
}

variable "sleepy_time" {
  description = "How long our local-exec will take a nap."
  default     = 0
}

variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  # default = "afasdf"

  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}