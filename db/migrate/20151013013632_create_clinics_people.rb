class CreateClinicsPeople < ActiveRecord::Migration
  def change
    create_table :clinics_people do |t|
	t.integer :clinic_id
	t.integer :person_id
    end
  end
end
