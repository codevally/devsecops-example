ansible_role_unzip
==================

This is a simple Ansible role that installs/uninstall the unzip utility.

Variables
---------

```yaml
unzip_installed: true
```

 * unzip_installed: Default: true. Put false to uninstall the unzip.

Example Playbook
----------------

See below an example of usage for the module.

```yaml
    - hosts: localhost
      connection: local
      become: true
      roles:
         - { role: mauromedda.ansible_role_unzip, unzip_installed: true }
```

License
-------

BSD

Author Information
------------------

Mauro Medda < medda.mauro at gmail dot com >
