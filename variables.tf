variable "secret-access-key" {
  type = string
}

variable "access-key" {
  type = string
}

variable "instance_name" {
  description = "Name of the instance to be created"
  default     = "l-server"
}

# T2 not available in Melbourne
variable "instance_type" {
  default = "t3.micro"
}

# Default to Ubuntu in Melbourne
variable "ami_id" {
  description = "The AMI to use"
  default     = "ami-08b65f49f52d12d21"
}

variable "cidr_block" {
  description = "CIDR Block"
  type        = string
  default     = "10.0.0.0/24"
}

variable "file_name" {
  description = "Name of the key pair file"
  type        = string
  default     = "l-server-key.pem"
}

variable "key_pair_name" {
  default = "r-server-key"
}

variable "availability_zone" {
  description = "Availability Zones for the Subnet"
  type        = string
  default     = "ap-southeast-4a"
}
