pddg.chrony
=========

Enable chrony to sync a system datetime with any ntp servers.

Requirements
------------

No requirements for this role.

Role Variables
--------------

```yaml
# An array of ntp server addresses to sync
chrony_ntp_servers:
  - 0.pool.ntp.org
  - 1.pool.ntp.org
  - 2.pool.ntp.org
  - 3.pool.ntp.org

# Location to logging
chrony_log_location: /var/log/chrony

# makestep {{ thresholt }} {{ trial }}
chrony_step_config:
  threshold: 10
  trial: 3

# Enable or disable rtcsync
chrony_rtcsync_enable: yes

# Set max slew rate. This variable is not defined by default.
chrony_maxslewrate: 500

# Whitelist and blacklist to access
# There is no rule by default.
chrony_access_list:
  allow:
    - 127.0.0.1
  deny:
    - all

chrony_bind_cmd_addresses:
  - "127.0.0.1"
  - "::1"

# Specify the key used as password for chronyc
chrony_command_key: 1

# Enable or disable client log
chrony_client_log_enable: no

# Logging threshold
chrony_log_threshold: 0.5
```

Dependencies
------------

No dependencies

Example Playbook
----------------

```yaml
- hosts: all
  roles:
    - name: pddg.chrony
      vars:
        chrony_ntp_servers:
          - ntp.example.com
          - ntp.sample.com
```

License
-------

MIT

Author Information
------------------

[pddg](https://github.com/pddg/)
  - Web: [poyo.info](https://www.poyo.info/)

