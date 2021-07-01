class RemovePeopleIdFromAppointment < ActiveRecord::Migration[6.1]
  def change
    remove_reference :appointments, :people, null: false, foreign_key: true
  end
end
