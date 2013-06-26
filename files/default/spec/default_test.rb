describe_recipe 'ssmtp:default' do
    it 'installs ssmtp' do
      package("ssmtp").must_be_installed
    end
end
