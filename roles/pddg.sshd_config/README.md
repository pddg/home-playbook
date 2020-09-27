pddg.sshd\_config
================

Configure /etc/ssh/sshd\_config

Requirements
------------

No requirements

Role Variables
--------------

See [defaults/main.yml](./defaults/main.yml)

Dependencies
------------

There are no dependencies.

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
    - name: pddg.sshd_config
      vars:
        sshd_password_auth: yes
```

License
-------

MIT

Author Information
------------------

[pddg](https://github.com/pddg/)
  - Web: [poyo.info](https://www.poyo.info/)

