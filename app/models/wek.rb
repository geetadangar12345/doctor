class Wek < ApplicationRecord
	belongs_to :doctor
	has_many :appointments
end
