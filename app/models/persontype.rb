class Persontype < ActiveRecord::Base
	validates :persontype, presence: true
	has_many :people
end
