resource "aws_s3_bucket" "terraform_state" {
    bucket  = "terraform-up-and-running-momin"


    # Prevent destroy S3 bucket
    lifecycle {
        prevent_destroy = true
    }

    # Version Managing
    versioning {
        enabled = true
    }

    # Creating a encryption for Server
    server_side_encryption_configuration {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
      }
    }

}