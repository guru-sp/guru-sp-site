require 'spec_helper'

describe Talk do
  it { should validate_presence_of :title }
  it { should belong_to :meeting  }
  it { should have_and_belong_to_many :speakers }
end

