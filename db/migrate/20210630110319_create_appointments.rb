class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.references :wek, null: false, foreign_key: true

      t.timestamps
    end
  end
end
