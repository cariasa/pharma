class Presentation < ActiveRecord::Base
	validates :presentation, presence: true
	validates :concentration, presence: true
	validates :units, presence: true
	has_many :products
end
