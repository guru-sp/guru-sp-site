require 'spec_helper'

describe User do
  before(:all) do
    Factory.create(:user, :email => "contato@guru-sp.org", :password => "algumasenhadificil", :github => "gurusp")
  end
  
  subject do
    Factory.build(:user, :email => "teste@guru-sp.org", :password => "algumasenhadificil", :github => "gurusp.org")
  end
  
  it { should validate_uniqueness_of :email }
  it { should validate_uniqueness_of :github }
end
