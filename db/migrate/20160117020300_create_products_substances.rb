class CreateProductsSubstances < ActiveRecord::Migration
  def change
    create_table :products_substances do |t|
      t.integer :product_id
      t.integer :substance_id
      t.float :concentration
      t.string :units

      t.timestamps null: false
    end
  end
end
