class DropProductsAndMedicationsTable < ActiveRecord::Migration
  def change
  	drop_table :products
  	drop_table :medications
  end
  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
