class ProductsSubstance < ActiveRecord::Base
	belongs_to :product
	belongs_to :substance
end
