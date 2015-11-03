class Medication < ActiveRecord::Base
	validates :medication, presence: true
	validates :category_id, presence: true
	validates :brand_id, presence: true
	has_many :brands
	has_many :categories
	has_many :products, :dependent => :destroy
	has_many :substances, :through => :products
	accepts_nested_attributes_for :products
end
