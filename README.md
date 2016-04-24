maduro_project
====================
Chef cookbook for building basic httpd server in AWS/EC2 w/ Test-Kitchen

Currently supports:
- CentOS
- Chef 12

AWS Setup
------------
Please follow the setup instructions found here: http://docs.aws.amazon.com/opsworks/latest/userguide/cookbooks-101-basics-ec2.html

Additional items that might trip you up:
* Install python 2.7 or 3.4 (update env Path variable to include <Python Directory> and <Python Directory>\Scripts).
* Install AWS command-line tools (update env Path variable to include <AWSCLI directory>).
* Run Aws.configure to set config and credential files in .aws directory.
* Update env variable SSL_CERT_FILE to point towards ca-bundle.crt for aws-sdk-core.
* Follow the instructions from opsworks carefully and makesure ALL steps have completed successfully.

Requirements
------------
Please see metadata.rb for specific details.

Current dependencies:
```ruby
depends 'yum-epel'
depends 'iptables'
depends 'selinux'
```

Attributes
----------
Please see attributes file for specific details.

Usage
-----
#### maduro_project::default
Just include `maduro_project` in your node's `run_list`:
**Note:** See individual recipes for further notes on usage


```json
{
  "name":"my_node",
  "run_list": [
    "recipe[maduro_project]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github Enterprise
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Update the CHANGELOG
7. Update the README (if applicable)
8. Submit a Pull Request using Github

Testing
------------
Unit tests, using rspec and ChefSpec, are required
Integration tests using Serverspec are also required

Make sure you have the required gems/verions installed
`bundle install`

Then run all of the tests with the gem environment specific for this project
`bundle exec rake`
* foodcritic
* rubocop
* chefspec
* kitchen-vagrant

To run specific test 'bundles'
* `bundle exec rake style`
* `bundle exec rake unit`
* `bundle exec rake integration:kitchen:openstack`

Contributors
-------------------
* Jonathan Thompson
* Rohit Kumar
* Deepa Sarasamma
* Andrew Bleasdale
* Vijayakumar Pakkiri