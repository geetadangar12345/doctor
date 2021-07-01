class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
