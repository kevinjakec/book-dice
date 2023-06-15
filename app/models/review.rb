class Review < ApplicationRecord
  has_many :comments
  belongs_to :reviewer
  belongs_to :comments
end
