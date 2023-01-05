# Postgres on aws

1. terraform cli `brew install terraform`
2. aws cli `brew install awscli` (i think)
3. add aws creds `aws configure`
4. run `terraform init`
5. run `terraform plan`
6. run `terraform apply`

It will take a few min to setup the entire infastructure
Both the DB and VPC fall in the free tier

Connect directly through psql
`psql -h $(terraform output -raw rds_hostname) -p $(terraform output -raw rds_port) -U $(terraform output -raw rds_username) postgres`

Or a connection string might look like
```
echo "postgresql://$(terraform output -raw rds_username):<passwd>&$(terraform output -raw rds_hostname)"
```


free aws
https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all

price calc
https://calculator.aws/#/addService
