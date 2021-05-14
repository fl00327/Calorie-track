class Weight < ApplicationRecord
  # validating weight field and has to be greater than 0
  # a weight belongs to a user
  validates :weight, presence: true
  validates :weight, numericality: { greater_than_or_equal_to: 0 }
  belongs_to :user
  #creation of scope to be used in controller
  scope :user_weight,->(user) { where(['user_id = ?', user.id]) }
end
