variable "region" {
    description = "AWS region to deploy resources"
    default     = "ap-southeast-2"
}

variable "profile" {
    description = "AWA profile credentials"
    default = "CAB432-STUDENT-901444280953"
}

variable "key_pair_name" {
    description = "Name of the AWS key pair for SSH access"
    default     = "n11226048"
}

variable "instance_type" {
    description = "Type of EC2 instance to create"
    default     = "t2.micro"
}

variable "instance_profile" {
    description = "Iam role for EC2 instance"
    default = "ec2SSMCab432"
}

variable "ec2_subnet_id" {
    description = "Public subnet ID for an ec2 instance"
    default = "subnet-075811427d5564cf9"
}

variable "vpc_id" {
    description = "Default VPC ID"
    default = "vpc-007bab53289655834"
}