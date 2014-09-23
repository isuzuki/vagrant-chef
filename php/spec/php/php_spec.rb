require 'spec_helper'

describe package('php') do
  it { should be_installed }
end

describe 'PHP config' do
  context php_config('date.timezone') do
    its(:value) { should eq 'Asia/Tokyo' }
  end
end
