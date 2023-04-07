##  Install docker and deploy a container on a vagrant box using Ansible
![My Image](images/bg1.png)

### Tools used
- Ansible v2.14.4
- Vagrant v2.3.4

### Running this playbook
**Quick Steps:**

I used virtualbox as vagrant provisioner, run the command below and select your prefered provisioner

```!bash
vagrant box add hashicorp/bionic64
vagrant up
```

While spinning up the vagrant box will automatically be configured using the ansible playbook 
