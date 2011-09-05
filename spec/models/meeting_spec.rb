require 'spec_helper'

describe Meeting do
  it { should validate_presence_of :title }
end

