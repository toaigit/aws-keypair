# aws-keypair - generate ssh keypair for EC2

* Before you can create an EC2, you need to have an ssh public key on AWS.  You can go to the AWS console, EC2, then click on key pair to generate a new keypair.  You can also use terraform to create a new key pair, or aws cli command.
  * Method 1:  complete code in terraform
  * Method 2:  some shell script and some terraform code
