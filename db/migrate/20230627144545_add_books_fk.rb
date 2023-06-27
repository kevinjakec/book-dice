class AddBooksFk < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :books, :users, column: :submitted_by
    add_foreign_key :books, :genres, column: :genre
  end
end
