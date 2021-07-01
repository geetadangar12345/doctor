class AddNotAvailbleToDoctor < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :not_available, :boolean,default: false
  end
end
