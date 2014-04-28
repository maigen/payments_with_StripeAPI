require 'spec_helper'

describe Nonprofit do
  it { should validate_presence_of :name }
  it { should have_many :payments }
end
