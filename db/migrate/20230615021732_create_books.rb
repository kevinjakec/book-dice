class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :genre #, null: false, foreign_key: { to_table: :genres }
      t.string :cover_image
      t.float :rating
      t.text :detailed_description
      t.date :publish_date
      t.string :publisher
      t.string :isbn_number
      t.integer :reviews #, null: true, foreign_key: { to_table: :reviews }
      t.integer :submitted_by #, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
