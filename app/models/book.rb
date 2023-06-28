class Book < ApplicationRecord
  belongs_to :genre, class_name: 'Genre', foreign_key: 'genre_id'
  belongs_to :submitted_by, class_name: 'User', foreign_key: 'submitted_by_id'
  
  has_many :reviews

  attr_accessor :brief_description

  # has_one_attached :cover_image

  private

end
