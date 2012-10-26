require 'chefspec'

describe 'firewall/::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'firewall/::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
