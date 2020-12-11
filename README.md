# Joshua-s
My Cloud infrastructure 

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  -[Playbook file](https://github.com/jwestbze/Joshua-s/blob/main/Ansible/playbook.yml)

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _____, in addition to restricting _____ to the network.
-Load balancers distributezss traffic in the network to the servers. Jump box is where you first enter the network and is hardened and monitored?

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the virtual box and system logs.
- Filebeat logs data and reports them to logstash or elasticsearch.
- Metricbeat collects and then log system and servive statistics.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   |    Linux         |
| Web1     | Host     | 10.0.0.12  |    Linux         |
| Web2     | Host     | 10.0.0.13  |    Linux         |
| ElkVM    | LogStats | 10.1.0.4   |    Linux         |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump-box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_

Machines within the network can only be accessed by ansible.
- I allowed my jumpbox ansible container to access my ElkVm. IP address for my ansible is 10.0.0.15.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box |     No              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- It makes it easier to do daily task.

The playbook implements the following tasks:
- install docker
- install pip3
- install python3
- designates system memory
- download and launch docker in elk container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

[Containers on ELkVM](https://github.com/jwestbze/Joshua-s/blob/main/Ansible/Docker_ps_elkvm.PNG

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web1 10.0.0.12
- Web2 10.0.0.13

We have installed the following Beats on these machines:
- Metricbeat
- Filebeat

These Beats allow us to collect the following information from each machine:
- Filebeat logs file changes on the VM's example if you add a new file onto the VM it will also log in kabana.
- Metricbeats collect all metric and services and logs them. Example new services running.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the playbook.yml file to ansible container.
- Update the hosts file to include the IP address of my VM's.
- Run the playbook, and navigate to Web Vm's to check that the installation worked as expected.


_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
