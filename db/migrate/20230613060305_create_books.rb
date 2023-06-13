class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.date :publish_date
      t.string :cover_image
      t.string :isbn_number
      t.text :brief_description
      t.text :detailed_description
      t.float :rating


      t.timestamps
    end
  end
end
