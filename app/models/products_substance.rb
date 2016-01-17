class ProductsSubstance < ActiveRecord::Base
	validates :product_id, presence: true
	validates :substance_id, presence: true
	validates :concentration, presence: true
	validates :units, presence: true
	belongs_to :product
	belongs_to :substance
end
