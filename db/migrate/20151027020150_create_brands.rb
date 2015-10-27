class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :brand
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
