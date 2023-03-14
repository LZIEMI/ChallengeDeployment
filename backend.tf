terraform {
  backend "s3" {
    bucket = "aws-terraform-ecs-jenkins-project"
    key    = "remote.tfstate"
    region = "us-east-1"
  }
}
