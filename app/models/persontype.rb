class Persontype < ActiveRecord::Base
	validates :persontype, presence: true
	has_and_belongs_to_many :people
end
