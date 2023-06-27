class AddCommentsFk < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :comments, :users, column: :commenter
    add_foreign_key :comments, :reviews, column: :review
  end
end
