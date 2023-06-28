class Review < ApplicationRecord
  belongs_to :book, class_name: 'Book', foreign_key: 'book_id'
  belongs_to :reviewer, class_name: 'User', foreign_key: 'reviewer_id'
  has_many :comments
  
  attr_accessor :book_id
end
