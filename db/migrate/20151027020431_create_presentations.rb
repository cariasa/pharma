class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :presentation
      t.integer :concentration
      t.string :units

      t.timestamps null: false
    end
  end
end
