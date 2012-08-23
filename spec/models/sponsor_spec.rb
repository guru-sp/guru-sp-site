require 'spec_helper'

describe Sponsor do
  it { should validate_presence_of :name }
end
