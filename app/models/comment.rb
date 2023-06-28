class Comment < ApplicationRecord
  belongs_to :review, class_name: 'Review', foreign_key: 'review_id'
  belongs_to :commenter, class_name: 'User', foreign_key: 'commenter_id'
  attr_accessor :review_id
end
