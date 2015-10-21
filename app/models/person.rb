class Person < ActiveRecord::Base
	validates :fullname, presence: true
	validates :address, presence: true
	validates :telephone, presence: true
	validates :birthday, presence: true
	validates :idperson, presence: true
	validates :city_id, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
	belongs_to :city
	belongs_to :specialty
	has_and_belongs_to_many :clinics
	has_and_belongs_to_many :persontypes
end
