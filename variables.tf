variable "number_of_instances" {
    type = number
    validation {
      condition = number_of_instances < 3
      error_message = "The maximum number of instances that can be started is 2!"
    }
}

variable "instance_type" {
    type = string
    validation {
      condition = substr(instance_type,0,1) == "t2"
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