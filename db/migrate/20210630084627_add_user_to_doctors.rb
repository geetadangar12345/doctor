class AddUserToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :user, foreign_key: true
    add_reference :doctors, :week, foreign_key: true

  end
end
