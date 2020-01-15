resource "aws_s3_bucket" "cloudability" {
  bucket_prefix = "${var.aws_s3_bucket_name_prefix}-"
  acl    = "private"
  force_destroy = true
#   policy = <<EOF
# {
#     "Version": "2008-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Principal": {
#                 "Service": "billingreports.amazonaws.com"
#             },
#             "Action": [
#                 "s3:GetBucketAcl",
#                 "s3:GetBucketPolicy"
#             ],
#             "Resource": "arn:aws:s3:::${var.aws_s3_bucket_name_prefix}${var.aws_payer_account_id}"
#         },
#         {
#             "Effect": "Allow",
#             "Principal": {
#                 "Service": "billingreports.amazonaws.com"
#             },
#             "Action": "s3:PutObject",
#             "Resource": "arn:aws:s3:::${var.aws_s3_bucket_name_prefix}${var.aws_payer_account_id}/*"
#         }
#     ]
# }
# EOF

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
}

data "aws_iam_policy_document" "cloudability" {
    statement {
    	actions = [ 
			"s3:GetBucketAcl",
            "s3:GetBucketPolicy"
    	]
        principals {
            type = "Service"
            identifiers = ["billingreports.amazonaws.com"]
        }
    	resources = [
    		"${aws_s3_bucket.cloudability.arn}"
    	]
    }
    statement {
    	actions = [ 
			"s3:PutObject"
    	]
        principals {
            type = "Service"
            identifiers = ["billingreports.amazonaws.com"]
        }
    	resources = [
    		"${aws_s3_bucket.cloudability.arn}/*"
    	]
    }
}


resource "aws_s3_bucket_policy" "cloudability" {
  	bucket = aws_s3_bucket.cloudability.id
  	policy = data.aws_iam_policy_document.cloudability.json
}

