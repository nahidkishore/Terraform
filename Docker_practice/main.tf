terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}


resource "docker_image" "nginx_image" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx_container" {
  image = docker_image.nginx_image.name
  name  = "nginx-container"

  ports {
    internal = 80
    external = 80
  }
}

provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "devops_bucket" {
  bucket = "devops-my-bucket"

  tags = {
    Name = "devops_my_bucket"

  }
}

resource "aws_instance" "devops_instance" {
  count         = 7
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "devops_test_instance"
  }
}