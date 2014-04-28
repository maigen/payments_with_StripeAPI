class Nonprofit < ActiveRecord::Base
  validates :name, presence: true
  has_many :payments
end
