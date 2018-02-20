require 'chefspec'
require_relative 'spec_helper'

describe 'ssmtp::default' do
  before { stub_resources }

  let(:chef_run) { ChefSpec::SoloRunner.new(UBUNTU_OPTS).converge(described_recipe) }

  it 'upgrades package' do
    expect(chef_run).to upgrade_package('ssmtp')
  end

  it 'writes ssmtp.conf file' do
    expect(chef_run).to create_template('/etc/ssmtp/ssmtp.conf').with(
      owner:  'root',
      group:  'mail'
    )
  end
end
