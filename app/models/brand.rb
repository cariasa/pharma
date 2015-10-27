class Brand < ActiveRecord::Base
	validates :brand, presence: true
	validates :person_id, presence: true
	belongs_to :medication
end
