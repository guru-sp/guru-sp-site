require 'spec_helper'

describe User do

  subject do
    Factory.build(:user)
  end

  it { should validate_uniqueness_of :email }
  it { should validate_uniqueness_of :github }
  it { should validate_uniqueness_of :nickname }
  it { should validate_presence_of :nickname }
  it { should validate_presence_of :email }
end

