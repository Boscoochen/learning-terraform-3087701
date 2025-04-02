terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-bosco-dev-2025"  # replace with your actual bucket name
    key            = "envs/dev/terraform.tfstate" # path inside the bucket
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-locks"            # optional but recommended
  }
}