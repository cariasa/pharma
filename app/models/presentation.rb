class Presentation < ActiveRecord::Base
	validates :presentation, presence: true
	has_many :products
end
