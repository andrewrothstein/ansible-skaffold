andrewrothstein.skaffold
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-skaffold.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-skaffold)

Installs [skaffold](https://skaffold.dev/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.skaffold
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
