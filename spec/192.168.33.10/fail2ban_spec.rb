require 'spec_helper'

describe "fail2ban" do
  context package('fail2ban') do
    it { should be_installed }
  end
end
