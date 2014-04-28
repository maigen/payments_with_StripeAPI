require 'spec_helper'

describe Payment do
  it { should validate_presence_of :card_number }
  it { should validate_presence_of :cvc }
  it { should validate_presence_of :exp_month }
  it { should validate_presence_of :exp_year }
  it { should validate_presence_of :nonprofit_id }
  it { should belong_to :nonprofit }
end
