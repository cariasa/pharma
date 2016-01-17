class Substance < ActiveRecord::Base
	validates :substance, presence: true
	has_many :substances, :through => :products_substance
end
