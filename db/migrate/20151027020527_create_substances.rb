class CreateSubstances < ActiveRecord::Migration
  def change
    create_table :substances do |t|
      t.string :substance
      t.text :description

      t.timestamps null: false
    end
  end
end
