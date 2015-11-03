class DropPresentation < ActiveRecord::Migration
  def change
  	drop_table :presentations
  end
end
