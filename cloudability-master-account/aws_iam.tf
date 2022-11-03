resource "aws_iam_policy" "cloudability_master_payer_policy" {
  name   = var.master_payer_policy_name
  path   = "/"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Resource": [
        "${aws_s3_bucket.cloudability.arn}",
        "${aws_s3_bucket.cloudability.arn}/*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "organizations:ListAccounts"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "cloudability_master_payer_policy" {
  role       = module.cloudability_aws_iam_role.role_id
  policy_arn = aws_iam_policy.cloudability_master_payer_policy.arn
}
