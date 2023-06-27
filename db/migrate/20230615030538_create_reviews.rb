class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :book #, null: false, foreign_key: true
      t.integer :reviewer #, null: false, foreign_key: true
      t.text :body
      t.integer :comments #, null: true, foreign_key: true
      t.timestamps
    end
  end
end
