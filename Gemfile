source 'https://rubygems.org'

# resolve nokogiri updates for chefdk, although it may force chefdk now
# https://github.com/chef/chef-dk/issues/278#issuecomment-89251860
ENV['PKG_CONFIG_PATH'] = '/opt/chefdk/embedded/lib/pkgconfig'

gem 'berkshelf', '~> 4.3', '>= 4.3.1'

group :unit do
  gem 'chefspec',         '~> 4.6', '>= 4.6.0'
  gem 'foodcritic',       '~> 5.0', '>= 5.0.0'
  gem 'rubocop',          '~> 0.38', '>= 0.38.0'
end

group :integration do
  gem 'kitchen-digitalocean'
  gem 'kitchen-ec2'
  gem 'kitchen-vagrant', '~> 0.19'
  gem 'test-kitchen', '~> 1.6.0'
end

group :development do
  gem 'guard',            '~> 2.13'
  gem 'guard-foodcritic', '~> 2.0'
  gem 'guard-kitchen',    '~> 0.0'
  gem 'guard-rspec',      '~> 4.6'
  gem 'guard-rubocop',    '~> 1.2'
  gem 'psych', '~> 2.0.17'
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'terminal-notifier-guard', require: false
  require 'rbconfig'
  if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i
    gem 'wdm', '>= 0.1.1'
    gem 'win32console'
  end
end
