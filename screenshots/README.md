# Terraform AWS EC2 & S3 Infrastructure Project

This project uses Terraform to:

- Provision an EC2 instance on AWS
- Create a unique S3 bucket
- Use Terraform modules to structure infrastructure as code

## 📂 Project Structure

terraform-ec2/
├── main.tf
├── terraform.tfstate
├── modules/
│ └── ec2/
│ ├── main.tf
│ └── variables.tf
└── screenshots/
├── 01_terraform_init.png
├── 02_terraform_apply_ec2.png
├── 03_ec2_console_instance.png
├── 04_s3_console_bucket.png
├── 05_main_tf_module_block.png
├── 06_module_ec2_main_tf.png
└── 07_module_ec2_variables_tf.png

## ⚙️ Commands Used

```bash
terraform init
terraform plan
terraform apply
terraform destroy

## Screenshot: Terraform Init
![Terraform Init](screenshots/01_terraform_init.png)

## Screenshot: EC2 Instance Created
![EC2 Apply](screenshots/02_terraform_apply_ec2.png)

## Screenshot: EC2 in AWS Console
![EC2 Console](screenshots/03_ec2_console_instance.png)

## Screenshot: S3 Bucket
![S3 Bucket](screenshots/04_s3_console_bucket.png)

## Screenshot: main.tf Module Block
![main.tf Module](screenshots/05_main_tf_module_block.png)

## Screenshot: modules/ec2/main.tf
![Module main.tf](screenshots/06_module_ec2_main_tf.png)

## Screenshot: modules/ec2/variables.tf
![Module variables.tf](screenshots/07_module_ec2_variables_tf.png)
