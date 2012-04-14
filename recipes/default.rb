#
# Author:: Sander van Zoest (<sander@vanzoest.com>)
# Cookbook Name:: ssmtp
# Recipe:: default
#
# Copyright 2009, Alexander van Zoest
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package "ssmtp" do
  action :install
end

template "/etc/ssmtp/ssmtp.conf" do
  source "ssmtp.conf.erb"
  owner "root"
  group "root"
  mode  "0644"
  variables(
     :root             => node[:ssmtp][:root],
     :hostname         => node[:ssmtp][:hostname],
     :use_starttls     => node[:ssmtp][:use_starttls],
     :from_line_override => node[:ssmtp][:from_line_override],
     :smtp_server_host => node[:ssmtp][:smtp_server_host],
     :smtp_server_port => node[:ssmtp][:smtp_server_port],
     :domain           => node[:ssmtp][:domain],
     :auth_username    => node[:ssmtp][:auth_username],
     :auth_password    => node[:ssmtp][:auth_password],
     :auth_method      => node[:ssmtp][:auth_method]
  )
end
