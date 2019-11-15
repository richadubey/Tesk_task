class CreateCtasks < ActiveRecord::Migration[5.2]
  def change
    create_table :ctasks do |t|
      t.string :description
      t.integer :cday_id

      t.timestamps
    end
  end
end
