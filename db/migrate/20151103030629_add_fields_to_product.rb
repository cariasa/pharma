class AddFieldsToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :concentration, :integer
  	add_column :products, :units, :string
  end
end
