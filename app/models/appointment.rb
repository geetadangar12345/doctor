class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :person_name
  belongs_to :wek
  belongs_to :patient
end
