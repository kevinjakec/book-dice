class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.references :genre, null: false, foreign_key: true
      t.string :cover_image
      t.text :brief_description
      t.float :rating
      t.text :detailed_description
      t.date :publish_date
      t.string :publisher
      t.string :isbn_number
      t.references :reviews, null: false, foreign_key: true
      t.references :submitted_by, null: false, foreign_key: true

      t.timestamps
    end
  end
end
