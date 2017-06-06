class UserInfo < ApplicationRecord
  belongs_to :user
  # belongs_to :order
  has_many :orders
end
