class DropMedicationPresentationSubstance < ActiveRecord::Migration
  def change
  	drop_table :medication_presentation_substance
  end
end
