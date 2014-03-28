require 'spec_helper'

describe port(22) do
  it { should be_listening }
end

describe package('tomcat7') do
  it { should be_installed }
end

describe service('tomcat7') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8080) do
  it { should_not be_listening }
end

describe port(8081) do
  it { should be_listening }
end 
