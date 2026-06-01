terraform {
  backend "s3" {
    bucket         = "awez-terraform-state-bucket"
    key            = "project5/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}