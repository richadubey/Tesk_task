class CreateCdays < ActiveRecord::Migration[5.2]
  def change
    create_table :cdays do |t|
      t.integer :days
      t.integer :calendar_id

      t.timestamps
    end
  end
end
