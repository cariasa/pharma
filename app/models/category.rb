class Category < ActiveRecord::Base
	validates :category, presence: true
	belongs_to :medication
end
