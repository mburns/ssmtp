ssmtp Cookbook Changelog
==========================
This file is used to list changes made in each version of the ssmtp cookbook.

v0.4.0
------
- [GH-17] Modernize cookbook with latest development tools
- Removed Vagrantfile as it is recommended to use test-kitchen instead
- [GH-16] - Update yum epel dependency to support yum > 3.0
- [GH-15] - Moves config file permissions to attributes
- [GH-14] - Added ssmtp.auth_enabled (default true) and a bit of cleanup

v0.3.2
------

- [GH-13] - Add auth only when `node['ssmtp']['auth_username']` attribute is set.

v0.3.1
------

- packaging error for 0.3.0

v0.3.0
------

- [GH-10] - Fixed so non-root users in mail group can send mail (trinitronx)
- [GH-9] - Added support for RHEL family distros (trinitronx)
- [GH-8] - This should fix the test kitchen integration for this cookbook (trinitronx)
- [GH-7] - Update Berksfile :test dependency on cookbook: sysctl (trinitronx)
- [GH-5] - Update test-kitchen dependency in Gemfile (trinitronx)
- [GH-3] - Added use_tls attribute and enabled its use in the ssmtp.conf template (ianneub)
- [GH-2] - Change from using node.domain to node['domain'] incase 'domain' is not available. (ianneub)

v0.2.0
------

- [GH-1] - Major overhaul (fooforge)

v0.1.0
------

- Initial Release
