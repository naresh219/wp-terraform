#----outputs.tf file

output "bucket_name" {
    value = "${aws_s3_bucket.wp_bucket.name}"
}
