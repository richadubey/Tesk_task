class CreatePtasks < ActiveRecord::Migration[5.2]
  def change
    create_table :ptasks do |t|
      t.string :description
      t.integer :pday_id

      t.timestamps
    end
  end
end
