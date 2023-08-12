CIDRS = {
    "public_subnet" = "10.0.0.0/24"
    "private_subnet" = "10.0.1.0/24"
    
}

vpc_cidr = "10.0.0.0/16"

everywhere = "0.0.0.0/0"

ami  = "ami-053b0d53c279acc90"  


instance_type = "t2.micro"

key_name = "terraform-lab2"

associate_public_ip_address ={
    "public_subnet" = true
    "private_subnet" = false

}
user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              systemctl start apache2
              EOF
