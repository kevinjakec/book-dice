class Book < ApplicationRecord
    has_many :reviews

    validates :title, presence: true
    validates :author, presence: true
    validates :publish_date, presence: true
    validates :isbn_number, presence: true
end
