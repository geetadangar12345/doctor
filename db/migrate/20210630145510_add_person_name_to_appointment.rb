class AddPersonNameToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :person_name, null: false, foreign_key: true
  end
end
