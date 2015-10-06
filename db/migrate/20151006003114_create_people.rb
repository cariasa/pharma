class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fullname
      t.string :address
      t.string :telephone
      t.string :email
      t.date :birthday
      t.string :idperson
      t.integer :persontype_id
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
