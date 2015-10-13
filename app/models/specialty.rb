class Specialty < ActiveRecord::Base
	validates :specialty, presence: true
	has_many :people
end
