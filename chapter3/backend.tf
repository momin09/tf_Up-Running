terraform {
    backend "s3" {
        # Change the name before you create
        bucket  = "terraform-up-and-running-momin"
        key     = "global/s3/terraform.tfstate"
        region  = "ap-northeast-2"

        # Change the DynamoDB name before you create
        dynamodb_table  = "terraform-up-and-running-moMin-locks"
        encrypt         = true
    }
}