class Review < ApplicationRecord
  belongs_to :book
  belongs_to :reviewer, class_name: 'User', foreign_key: 'reviewer_id'
  has_many :comments
end
