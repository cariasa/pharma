class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :medication
      t.integer :category_id
      t.integer :brand_id
      t.text :description

      t.timestamps null: false
    end
  end
end
