class Category < ActiveRecord::Base
	validates :category, presence: true
	belongs_to :medication
	has_many :products
end
