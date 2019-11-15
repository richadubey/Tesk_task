class AddTotalToMarksheets < ActiveRecord::Migration[5.2]
  def change
  	add_column :marksheets, :total, :integer
  end
end
