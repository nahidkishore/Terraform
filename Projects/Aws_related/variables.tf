variable "ami" {
  default = "ami-0889a44b331db0194"

}
variable "instance_type" {
  default = "t2.micro"

}
variable "instance_name" {
  default = "devops_demo_instance_new"
}

variable "bucket_name" {
  default = "devops-demo-bucket-nahid"
}
variable "state_bucket_name" {
  default = "devops-demo-state-bucket"
}
variable "state_table_name" {
  default = "devops-demo-state-table"
}
variable "aws_region" {
  default = "us-east-1"
}