require 'spec_helper'

describe Meeting do
  it { should validate_presence_of :title }
  it { should have_many :talks }
end

