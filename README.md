ssmtp Cookbook
==============
[![Cookbook Version](https://img.shields.io/cookbook/v/ssmtp.svg?style=flat)](https://supermarket.chef.io/cookbooks/ssmtp)
[![Dependency Status](http://img.shields.io/gemnasium/svanzoest-cookbooks/ssmtp.svg?style=flat)](https://gemnasium.com/svanzoest-cookbooks/ssmtp)
[![Build Status](https://travis-ci.org/svanzoest-cookbooks/ssmtp.png?branch=master)](https://travis-ci.org/svanzoest-cookbooks/ssmtp)

This is a [Chef](http://www.chef.io/) cookbook for deploying [ssmtp](http://linux.die.net/man/8/ssmtp).

Requirements
============

## Platforms:

The following platforms and versions are tested and supported using
[test-kitchen](http://kitchen.ci/).

* Ubuntu 14.04, 16.04
* CentOS 6.9, 7.4

## Chef dependencies

* `yum-epel`

Usage
=====

### Adding the cookbook

Add `ssmtp` as a dependency to your wrapper cookbook.

### Configuration

The cookbook provides a couple attributes that help you to configure ssmtp via a role's `default_attributes`.

Here's an example role:

```ruby
  name 'mail_server'
  description "Installs mail related applications."
  # List of recipes and roles to apply. Requires Chef 0.8, earlier versions use 'recipes()'.
  run_list(
    'recipe[ssmtp]'
  )
  # Attributes applied if the node doesn't have it set already.
  default_attributes(
    'ssmtp' => {
      'root' => 'user@example.com',
      'rewrite_domain' => 'example.com',
      'mailhub_name' => 'smtp.example.com'
    }
  )
  # Attributes applied no matter what the node has set already.
  #override_attributes(
  #)
```

For a full list of attributes please consult `./attributes/default.rb`.

#### Authentication

By default this cookbook will use authentication. If you are relying on connecting to your mailhub without providing credentials disable authentication all together by setting `auth_enabled` to false.

The cookbook provides an attribute called `credential_method` which defines whether authentication credentials are provided in a crypted data bag or via plain text. It defaults to the more secure crypto data bag method.

Available options are:

* data_bag
* plain

##### Creating the data bag

```
 $ knife data bag create --secret-file .chef/encrypted_data_bag_secret mail ssmtp
 Created data_bag[mail]
 Created data_bag_item[ssmtp]
	
 $ mkdir -p data_bags/mail
 $ knife data bag show mail ssmtp -F json > data_bags/mail/ssmtp.json
```

##### Viewing the data bag

```
 $ knife data bag show --secret-file .chef/encrypted_data_bag_secret mail ssmtp
 id:        ssmtp
 password:  foobar
 username:  user@example.com
	
 $ knife data bag show --secret-file .chef/encrypted_data_bag_secret -F json mail ssmtp
 {
    "username": "user@example.com",
    "id": "ssmtp",
    "password": "foobar"
 }
```

## Development

We have written unit tests using [chefspec](http://code.sethvargo.com/chefspec/) and integration tests in [serverspec](http://serverspec.org/) executed via [test-kitchen](http://kitchen.ci). Much of the tooling around this cookbook is exposed via guard and test kitchen, so it is highly recommended to learn more about those tools. The easiest way to get started is to install the [Chef Development Kit](https://downloads.chef.io/chef-dk/)

## Running tests

The following commands will run the tests:

```
chef exec bundle install
chef exec rubocop
chef exec foodcritic .
chef exec rspec
chef exec kitchen test default-ubuntu-1404
chef exec kitchen test default-centos-70
```

The above will do ruby style ([rubocop](https://github.com/bbatsov/rubocop)) and cookbook style ([foodcritic](http://www.foodcritic.io/)) checks followed by rspec unit tests ensuring proper cookbook operation. Integration tests will be run next on two separate linux platforms (Ubuntu 14.04 LTS Precise 64-bit and CentOS 7.0). Please run the tests on any pull requests that you are about to submit and write tests for defects or new features to ensure backwards compatibility and a stable cookbook that we can all rely upon.

## Running tests continuously with guard

This cookbook is also setup to run the checks while you work via the [guard gem](http://guardgem.org/).

```
bundle install
bundle exec guard start
```

* Source hosted at [GitHub](https://github.com/svanzoest-cookbooks/ssmtp)
* Report issues/Questions/Feature requests on [GitHub](https://github.com/svanzoest-cookbooks/ssmtp/issues) as well

Pull requests are very welcome! Make sure your patches are well tested.

## License

Copyright © 2009-2015, Sander van Zoest
Copyright © 2012, Mike Adolphs

Licensed under the Apache License, Version 2.0 (the "License");  
you may not use this file except in compliance with the License.  
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software  
distributed under the License is distributed on an "AS IS" BASIS,  
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and  
limitations under the License.
