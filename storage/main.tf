#----storage/main.tf file----
resource "random_id" "bucket_id" {
    byte_length = 2
}

resource "aws_s3_bucket" "wp_bucket" {
    bucket          = "${var.project_name}-${random_id.bucket_id.dec}"
    acl             = private
    versioning      = true
    force_destroy   = true
    tags {
        name = "wp_bucket"
    }
}
