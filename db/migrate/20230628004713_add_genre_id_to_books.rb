class AddGenreIdToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :genre, null: false, foreign_key: { to_table: :genres, column: :genre_id }
    add_reference :books, :user, null: false, foreign_key: { to_table: :users, column: :submitted_by }
  end
end
