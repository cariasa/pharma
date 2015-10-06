class Person < ActiveRecord::Base
	belongs_to :city
	belongs_to :persontype
end
