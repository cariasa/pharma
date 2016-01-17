class Presentation < ActiveRecord::Base
	validates :presentation, presence: true
end
