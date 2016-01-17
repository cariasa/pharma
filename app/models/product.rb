class Product < ActiveRecord::Base
	validates :brand_id, presence: true
	validates :category_id, presence: true
	validates :presentation_id, presence: true
	belongs_to :brand
	belongs_to :category
	belongs_to :presentation
	has_many :substances, :through => :products_substance
end
