class CreatePdays < ActiveRecord::Migration[5.2]
  def change
    create_table :pdays do |t|
      t.integer :days
      t.integer :program_id

      t.timestamps
    end
  end
end
