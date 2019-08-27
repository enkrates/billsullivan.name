#! /usr/bin/env bash

# Make sure to set aws_config correctly to make this work.

aws s3 cp _site s3://billsullivan.name/ --recursive --profile billsullivan

aws cloudfront create-invalidation --distribution-id E2MVJDTKTGP8PO --paths "/*" --profile billsullivan
