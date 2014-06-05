require 'spec_helper'

describe User do

  before do
    FactoryGirl.create(:user, :email => "teste@teste.com", :github => "teste", :nickname => "testando")
  end

  subject do
    FactoryGirl.build(:user)
  end

  it { should validate_uniqueness_of :email }
  it { should validate_uniqueness_of :github }
  it { should validate_uniqueness_of :nickname }
  it { should validate_presence_of :nickname }
  it { should validate_presence_of :email }
  it { should_not allow_value("user spaced").for(:github) }
  it { should allow_value("testehifen-2323").for(:github) }
  it { should allow_value("").for(:github) }
end

