maintainer       "Van Zoest Technologies"
maintainer_email "sander@vanzoest.com"
license          "Apache 2.0"
description      "Installs/Configures ssmtp"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"

attribute "ssmtp",
  :display_name => "sSMTP",
  :description  => "Hash of sSMTP attributes",
  :type => "hash"

attribute "ssmtp/smtp_server_host",
  :display_name => "STMP Server Hostname",
  :description  => "The SMTP Server to use as a relay",
  :default      => 'smtp.#{domain}'

attribute "ssmtp/smtp_server_port",
  :display_name => "SMTP Server Port Number",
  :description  => "Port number for the SMTP Server",
  :default      => "587"

attribute "ssmtp/auth_username",
  :display_name => "SMTP AUTH Username",
  :description  => "Username to use for SMTP AUTH",
  :default      => "undefined"

attribute "ssmtp/auth_password",
  :display_name => "SMTP AUTH Password",
  :description  => "Password to use for SMTP AUTH",
  :default      => "undefined"

attribute "ssmtp/root",
  :display_name => "root mail recipient",
  :description  => "The user that gets all mail for userids less than 1000. If blank, address rewriting is disabled.",
  :default      => "undefined"

attribute "ssmtp/hostname",
  :display_name => "Hostname",
  :description  => "The full qualified name of the host. If not specified, the host is queried for its hostname.",
  :default      => 'undefined'

attribute "ssmtp/auth_method",
  :display_name => "SMTP AUTH Method",
  :description  => "Encoding Method used for SMTP AUTH",
  :default      => "DIGEST-MD5"

attribute "ssmtp/domain",
  :display_name => "Domain Name",
  :description  => "Domain Name to use in the From: address",
  :default      => '#{domain}'

attribute "ssmtp/from_line_override",
  :display_name => "From: line override",
  :description  => "Specifies whether the From header of an email, if any, may override the default domain.",
  :default      => "true"

attribute "ssmtp/use_starttls",
  :display_name => "Use StartTLS",
  :description  => "Specifies whether ssmtp does a EHLO/STARTTLS before starting SSL negotiation. See RFC 2487.",
  :default      => "true"
