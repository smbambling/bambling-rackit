require 'spec_helper'
describe 'rackit' do

  context 'with defaults for all parameters' do
    it { should contain_class('rackit') }
  end
end
