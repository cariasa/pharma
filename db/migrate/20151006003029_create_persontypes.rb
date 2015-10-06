class CreatePersontypes < ActiveRecord::Migration
  def change
    create_table :persontypes do |t|
      t.string :persontype

      t.timestamps null: false
    end
  end
end
