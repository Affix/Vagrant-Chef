Vagrant Provisioning with Chef
==============================
Configures NginX and php-fpm on a CentOS 6 Vagrant Box

Requirements
------------
 - VirtualBox
 - Vagrant
 - CentOS 6 Vagrant box (https://github.com/tommy-muehle/vagrant-box-centos-6.6/releases/download/1.0.0/centos-6.6-x86_64.box)
 - A Web Browser (I prefer Safari on OSX but anything works :))

Usage
-----
 - # vagrant box add centos6 https://github.com/tommy-muehle/vagrant-box-centos-6.6/releases/download/1.0.0/centos-6.6-x86_64.box
 - # vagrant up

Navigate to http://localhost:8080

Notes
-----

This recipe could potentially work on all distributions if you remove the yum and yum-epel cookbooks from the Vagrant File.
I have not tested this and it remains an unsupported use of this repository for now.

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors :
* Keiran 'Affix' Smith


License : GNU/GPLv3

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
