class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :clinic
      t.string :address
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
