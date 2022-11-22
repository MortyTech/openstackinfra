resource "vcd_vm" "control01" {
    accept_all_eulas               = true
    catalog_name                   = "OVA's_new"
    computer_name                  = "control01"
    cpu_cores                      = 2 #Core Per Socket
    cpu_hot_add_enabled            = false
    cpus                           = 4 #CPU Cores
    expose_hardware_virtualization = false
    memory                         = 10240
    memory_hot_add_enabled         = false
    name                           = "control01"
    os_type                        = "ubuntu64Guest"
    power_on                       = true
    prevent_update_power_off       = true
    template_name                  = "Ubuntu 20.04 Server (20220825)"

    guest_properties = {
      "hostname"    = "control01"
      "public-keys" = "YOUR_PUBLIC_SSH_KEY"
    }

  override_template_disk {
    bus_type        = "paravirtual"
    size_in_mb      = "15360"
    bus_number      = 0
    unit_number     = 0
    iops            = 0
    storage_profile = "vCloud hStorage SSD Gold new"
  }

    network {
        adapter_type       = "VMXNET3"
        connected          = true
        ip_allocation_mode = "MANUAL"
        ip                 = "10.11.119.11"
        is_primary         = true
        name               = "VLAN119"
        type               = "org"
    }
    network {
        adapter_type       = "E1000"
        connected          = true
        ip_allocation_mode = "DHCP"
        is_primary         = false
        name               = "Public"
        type               = "org"
    }    
}

resource "vcd_vm" "compute02" {
    accept_all_eulas               = true
    catalog_name                   = "OVA's_new"
    computer_name                  = "compute02"
    cpu_cores                      = 2 #Core Per Socket
    cpu_hot_add_enabled            = false
    cpus                           = 4 #CPU Cores
    expose_hardware_virtualization = true
    memory                         = 8192
    memory_hot_add_enabled         = false
    name                           = "compute02"
    os_type                        = "ubuntu64Guest"
    power_on                       = false
    prevent_update_power_off       = true
    template_name                  = "Ubuntu 20.04 Server (20220825)"
    
    guest_properties = {
      "hostname"    = "compute02"
      "public-keys" = "YOUR_PUBLIC_SSH_KEY"
    }

  override_template_disk {
    bus_type        = "paravirtual"
    size_in_mb      = "15360"
    bus_number      = 0
    unit_number     = 0
    iops            = 0
    storage_profile = "vCloud hStorage SSD Gold new"
  }

    network {
        adapter_type       = "VMXNET3"
        connected          = true
        ip_allocation_mode = "MANUAL"
        ip                 = "10.11.119.22"
        is_primary         = true
        name               = "VLAN119"
        type               = "org"
    }
    network {
        adapter_type       = "E1000"
        connected          = true
        ip_allocation_mode = "DHCP"
        is_primary         = false
        name               = "Public"
        type               = "org"
    }
}
