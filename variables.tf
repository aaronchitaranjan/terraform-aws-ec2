variable "number_of_instances" {
    type = number
    validation {
      condition = var.number_of_instances < 3
      error_message = "The maximum number of instances that can be started is 2!"
    }
}

variable "instance_type" {
    type = string
    validation {
      condition = substr(var.instance_type,0,2) == "t2"
      error_message = "Only T2 instance types are allowed!"
    }
}

variable "instance_name" {
    type = string
    default = "New Instance"
}

variable "cost_centre" {
    type = string
    default = "master"
}

variable "subnet_id" {
    type = string
}