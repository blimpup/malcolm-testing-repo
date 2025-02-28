terraform {
  required_providers {
    ansible = {
      version = "~> 1.3.0"
      source  = "ansible/ansible"
    }
  }
}


resource "ansible_playbook" "playbook" {
  playbook   = "playbook.yml"
  name       = "host-1.example.com"
  replayable = true

  extra_vars = {
    var_a = "Some variable"
    var_b = "Another variable"
  }
}
