require 'spec_helper'

describe 'ssh' do
  context file('/etc/ssh/sshd_config') do
    its(:content) { should match /PermitRootLogin no/ }
  end
  context port(22) do
    it { should be_listening }
  end
end
