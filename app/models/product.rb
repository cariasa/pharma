class Product < ActiveRecord::Base
	validates :medication_id, presence: true
	validates :presentation_id, presence: true
	validates :substance_id, presence: true

	belongs_to :medication
	belongs_to :presentation
	belongs_to :substance
end
