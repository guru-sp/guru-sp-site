require 'spec_helper'

describe User do
  should_validate_uniqueness_of :email
  should_validate_uniqueness_of :github
  
  before(:each) do
    Factory :user
  end
end
