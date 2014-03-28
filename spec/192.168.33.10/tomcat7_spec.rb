require 'spec_helper'
describe 'tomcat 7' do
  context package('tomcat7') do
    it { should be_installed }
  end
  context service('tomcat7') do
    it { should be_enabled }
    it { should be_running }
  end
  context port(8080) do
    it { should_not be_listening }
  end
  context port(8081) do
    it { should be_listening }
  end 
end
