class Product < ActiveRecord::Base
	belongs_to :brand
	belongs_to :category
	belongs_to :presentation
	has_many :substances, :through => :products_substance
end
