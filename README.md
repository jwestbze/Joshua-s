# Joshua-s
My Cloud infrastructure 

Included in this Github is my network diagram and also my ansible yaml scripts.

*Ansbile "playbook.yml": all done on my web VMs
  -installs docker
  -install python
  -install pip3

*Ansible "elk1.yml": all done on my elk VM
  -installs docker
  -installs pip3
  -installs python3
  -designates system memory
  -download and launch docker in elk container

*Ansible "metricbeat-playbook.yml": install on my webservers
  -install metricbeat
  -also runs setup parameters 
  
*Ansible "filebeat.yml": Install filebeat and configure system module
  -install filebeat
  -setup filebeat
  -start filebeat
  -config system module
  
