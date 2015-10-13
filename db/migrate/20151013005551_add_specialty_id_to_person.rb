class AddSpecialtyIdToPerson < ActiveRecord::Migration
  def change
    add_column :people, :specialty_id, :int
  end
end
