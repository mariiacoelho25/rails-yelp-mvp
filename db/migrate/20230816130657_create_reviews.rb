class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.integer :rating, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
