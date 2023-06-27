class AddReviewsFk < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :reviews, :users, column: :reviewer
    add_foreign_key :reviews, :books, column: :book
  end
end
