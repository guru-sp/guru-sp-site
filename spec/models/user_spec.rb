require 'spec_helper'

describe User do
  it { should validate_uniqueness_of :email }
  it { should validate_uniqueness_of :github }
  
  before(:each) do
    Factory :user
  end
end
