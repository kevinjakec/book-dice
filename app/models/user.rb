class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books, foreign_key: 'submitted_by_id'
  has_many :reviews, foreign_key: 'reviewer_id'
  has_many :comments, foreign_key: 'commenter_id'
end
