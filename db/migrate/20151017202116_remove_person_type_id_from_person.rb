class RemovePersonTypeIdFromPerson < ActiveRecord::Migration
  def change
  	remove_column :People, :persontype_id
  end
end
