class City < ActiveRecord::Base
	validates :city, presence: true
	has_many :people
	has_many :clinics
end
