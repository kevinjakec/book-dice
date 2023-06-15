class Book < ApplicationRecord
  has_many :reviews
  belongs_to :genre
  belongs_to :reviews
  belongs_to :submitted_by
end
