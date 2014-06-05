require 'spec_helper'

describe Venue do
  it { should validate_presence_of :name }
  it { should validate_presence_of :address }
end
