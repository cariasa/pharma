class Substance < ActiveRecord::Base
	validates :substance, presence: true
	has_many :products
end
