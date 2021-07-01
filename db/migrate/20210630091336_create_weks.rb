class CreateWeks < ActiveRecord::Migration[6.1]
  def change
    create_table :weks do |t|
      t.string :name

      t.timestamps
    end
  end
end
