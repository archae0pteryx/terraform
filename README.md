# Postgres on aws

1. terraform cli `brew install terraform`
2. aws cli `brew install awscli` (i think)
3. add aws creds `aws configure`
4. run `terraform init`
5. run `terraform plan`
6. run `terraform apply`

It will take a few min to setup the entire infastructure but it's setup to use well under the free tier allotment.

Connect directly through psql
`psql -h $(terraform output -raw rds_hostname) -p $(terraform output -raw rds_port) -U $(terraform output -raw rds_username) postgres`

Or a connection string might look like
```
echo "postgresql://$(terraform output -raw rds_username):<passwd>&$(terraform output -raw rds_hostname)"
```
