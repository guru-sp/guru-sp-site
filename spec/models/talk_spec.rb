require 'spec_helper'

describe Talk do
  it { should validate_presence_of :title }
  it { should validate_presence_of :presenter_name }
  it { should belong_to :meeting }
end

