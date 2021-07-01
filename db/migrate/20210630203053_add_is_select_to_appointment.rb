class AddIsSelectToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :is_select, :boolean, default: :false
  end
end
