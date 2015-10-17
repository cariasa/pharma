class CreatePeoplePersontypes < ActiveRecord::Migration
  def change
    create_table :people_persontypes do |t|
    	t.integer :persontype_id
    	t.integer :person_id
    end
  end
end
