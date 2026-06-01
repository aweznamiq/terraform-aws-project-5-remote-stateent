resource "aws_s3_bucket" "terraform_state" {
  bucket = "awez-terraform-state-bucket"

  tags = {
    Name = "terraform-state-bucket"
  }
}
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-locks"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "terraform-state-locks"
  }
}
resource "aws_s3_bucket" "test_bucket" {
  bucket = "awez-dev-test-bucket-2026"

  tags = {
    Environment = "dev"
  }
}