class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :publish_date, presence: true
    validates :isbn_number, presence: true
end
