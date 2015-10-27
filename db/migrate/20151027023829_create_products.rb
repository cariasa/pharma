class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :medication_id
      t.integer :presentation_id
      t.integer :substance_id

      t.timestamps null: false
    end
  end
end
