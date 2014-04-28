class Payment < ActiveRecord::Base
  validates :card_number, presence: true
  validates :cvc, presence: true
  validates :exp_month, presence: true
  validates :exp_year, presence: true
  validates :nonprofit_id, presence: true
  belongs_to :nonprofit
end
