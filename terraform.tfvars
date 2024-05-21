tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa6yfgaxkv573qdjzpl5pyhlx4aqxgrkud5qz4jbsr4epujxepa7na"
user_ocid        = "ocid1.user.oc1..aaaaaaaafa7beolhpvyy6atnznsq27dz3wuk7cfgujor33ry3slkxop7ifsq"
fingerprint      = "4d:fa:fc:77:e5:ec:8e:d1:81:3a:ac:2d:ce:32:4a:be"
private_key_path = "Desktop/modules-tf/private_key.pem"
region           = "eu-zurich-1"
compartment_ocid = "ocid1.compartment.oc1..aaaaaaaauucf3i6o6ql3gzwdcypzoaawnqfe5bt2wcvpohywbx6ocauycycq"
vcn_display_name = "my-example-vcn-tf"
vcn_cidr         = "10.0.0.0/16"
igw_display_name = "my-example-igw-tf"
natgw_display_name ="my-example-natgw-tf"
rt_display_name  = "my-example-rt-tf"

subnets = {
  subnet1 = {
    display_name        = "subnet-1"
    cidr_block          = "10.0.1.0/24"
    availability_domain = "EU-ZURICH-1-AD-1"
    dns_label           = "subnet1"
  },
  subnet2 = {
    display_name        = "subnet-2"
    cidr_block          = "10.0.2.0/24"
    availability_domain = "EU-ZURICH-1-AD-1"
    dns_label           = "subnet2"
  }
}

availability_domain = "EU-ZURICH-1-AD-1"
instance_display_name = "my-example-instance"
instance_shape = "VM.Standard2.1"
#image_ocid = "ocid1.image.oc1..exampleuniqueID"
ssh_public_key = "Desktop/modules-tf/public_key.pub"