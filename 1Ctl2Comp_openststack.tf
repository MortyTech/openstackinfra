resource "openstack_compute_instance_v2" "Controller01" {
  name            = "Controller01"
  flavor_id       = "0489a3c9-4348-4050-a274-b1352816410d" # its my flavor od 4 Core CPU and 10G RAM
  key_pair        = "AspireV5"  # My SSH key for importing into VM
  security_groups = ["default"] # set this if you hace an customized security group

  block_device {
    uuid                  = "b26149dd-89fc-4cc4-90fc-bb19f75ee530" # Image ID in glance
    source_type           = "image"
    volume_size           = 16                # Size in GB
    volume_type           = "business-class"  # you can add this if you have better performance volume type
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = true
  }

  network {
    uuid = "5eca867a-e20c-4701-8b90-5f0a89f7de1b" # My NAT Network
    fixed_ip_v4 = "192.168.1.11"
  }
}

resource "openstack_compute_instance_v2" "Compute01" {
  name            = "Compute01"
  flavor_id       = "0489a3c9-4348-4050-a274-b1352816410d" # its my flavor od 4 Core CPU and 10G RAM
  key_pair        = "AspireV5"  # My SSH key name for importing into VM
  security_groups = ["default"] # set this if you hace an customized security group

  block_device {
    uuid                  = "b26149dd-89fc-4cc4-90fc-bb19f75ee530" # Image ID in glance
    source_type           = "image"
    volume_size           = 16                # Size in GB
    volume_type           = "business-class"  # you can add this if you have better performance volume type
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = true
  }

  network {
    uuid = "5eca867a-e20c-4701-8b90-5f0a89f7de1b" # My NAT Network
    fixed_ip_v4 = "192.168.1.21"
  }
}

resource "openstack_compute_instance_v2" "Compute02" {
  name            = "Compute02"
  flavor_id       = "0489a3c9-4348-4050-a274-b1352816410d" # its my flavor od 4 Core CPU and 10G RAM
  key_pair        = "AspireV5"  # My SSH key for importing into VM
  security_groups = ["default"] # set this if you hace an customized security group

  block_device {
    uuid                  = "b26149dd-89fc-4cc4-90fc-bb19f75ee530" # Image ID in glance
    source_type           = "image"
    volume_size           = 16                # Size in GB
    volume_type           = "business-class"  # you can add this if you have better performance volume type
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = true
  }

  network {
    uuid = "5eca867a-e20c-4701-8b90-5f0a89f7de1b" # My NAT Network
    fixed_ip_v4 = "192.168.1.22"
  }
}
