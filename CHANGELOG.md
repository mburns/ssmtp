ssmtp Cookbook Changelog
==========================
This file is used to list changes made in each version of the ssmtp cookbook.

v0.5.0 (2018-02-20)
-------------------
- [GH-22] Set TLS_CA_File for all platforms by default (@chewi)
- [GH-23] Update hostname to use the fqdn ohai as source (@drenalin23)
- [GH-12] Add Scientific Linux support (@trinitronx)

v0.4.3 (2018-02-19)
-------------------
- [GH-26] Update ruby versions used for CI, releax yum-epel cookbook version requirement (@mburns)

v0.4.2 (2016-01-27)
-------------------
- [GH-21] added TLS_CA_File configuration support for RHEL/CentOS (sjourdan)
- update gem dependencies
- fix new rubocop offenses

v0.4.1 (2015-04-21)
-------------------
- [GH-20] Bump dependency of yum-epel to 0.6.0
- Added source_url and issues_url to metadata

v0.4.0 (2014-10-29)
-------------------
- [GH-17] Modernize cookbook with latest development tools
- Removed Vagrantfile as it is recommended to use test-kitchen instead
- [GH-16] - Update yum epel dependency to support yum > 3.0
- [GH-15] - Moves config file permissions to attributes
- [GH-14] - Added ssmtp.auth_enabled (default true) and a bit of cleanup
- [GH-13] - Add auth only when `node['ssmtp']['auth_username']` attribute is set.

v0.3.1 (2013-07-08)
-------------------
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
