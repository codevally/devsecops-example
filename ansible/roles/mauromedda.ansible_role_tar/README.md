ansible_role_tar
==================

This is a simple Ansible role that installs/uninstall the tar utility.

Variables
---------

```yaml
tar_installed: true
```

 * tar_installed: Default: true. Put false to uninstall the tar.

Example Playbook
----------------

See below an example of usage for the module.

```yaml
    - hosts: localhost
      connection: local
      become: true
      roles:
         - { role: mauromedda.ansible_role_tar, tar_installed: true }
```

License
-------

BSD

Author Information
------------------

Mauro Medda < medda.mauro at gmail dot com >
