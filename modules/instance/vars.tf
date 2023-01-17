variable "instance_type" {
    type = string
}

variable "instance_tags" {
  type = any
}

variable "instance_az" {
  type    = string
  # default = "us-west-1c"
}

variable "instance_termination" {
  type = bool
  # default = true
}

variable "instance_monitering" {
  type = bool
  # default = false
}

variable "sg_name" {
  type    = string
}

variable "sg_description" {
  type = string
}

variable "sg_tags" {
  type = any
}