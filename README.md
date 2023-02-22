# Creation of virtual infrastructure with Ansible

This project is about creating virtual machines automatically, on ESXI hypervisor, that consist of Ubuntu servers 20.04 LTS. The virtual machines can be:
 
 
 * LAMP servers
 * Docker Repository servers
 * Docker Engine servers
 
 The installation of the OS, is headless, without the need of any manual interaction, as well, as gathering the ISO for the OS.
 
 
 The machines need to be accessed with ssh keys, and no password is used for this.
 
 Optional functionalities, which have been implemented:
 
 * Automatic restore from snapshot - snapshot name, would need to be specified in `inventory/group_vars/all/all.yaml`
 * Automatic netplan apply - IP of the machine, as well as the gateway needs to be specified  in `inventory/group_vars/all/netplan.yaml`


End user would need to specify custom to its file system paths, mysql password, and such at the following files:

* `inventory/group_vars/all/apache.yaml`
* `inventory/group_vars/all/docker.yaml`
* `inventory/group_vars/all/mysql.yaml`
* `inventory/group_vars/all/all.yaml`
 
 


