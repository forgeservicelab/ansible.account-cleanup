Account Cleanup
===============

Removes user accounts from all machines on the inventory

Playbook Variables
------------------

Located in group_vars/all

- `remove_accounts` - A list of all the usernames to remove

The `nova.yml` configuration file
---------------------------------

This playbook uses the `nova.py` inventory plugin to gather all the target machines. The configuration of the OpenStack
target environment is set up in the `nova.yml` file, which needs the following values:

- `username` - An OpenStack username, must have access to all requested tenants or be administrator.
- `api_key` - Password for the username above.
- `project_id` - A list of all the tenants to get the list of instances from.

Usage
-----

```
$ ./cleanup.sh [optional ansible parameters]
```

Author Information
------------------

[Forge Servicelab Team](http://forgeservicelab.fi)
