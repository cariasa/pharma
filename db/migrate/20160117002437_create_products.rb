class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product
      t.integer :category_id
      t.integer :brand_id
      t.integer :presentation_id

      t.timestamps null: false
    end
  end
end
