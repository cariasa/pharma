class DropProductsSubstances < ActiveRecord::Migration
  def change
  	drop_table :products_substances
  end
end
