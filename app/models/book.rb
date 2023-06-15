class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :submitted_by, class_name: 'User', foreign_key: 'submitted_by_id'
  has_many :reviews
end
