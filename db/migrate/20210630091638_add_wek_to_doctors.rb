class AddWekToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :wek, foreign_key: true
  end
end
