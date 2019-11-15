class ChangeSubjectToBeIntegerInMarksheet < ActiveRecord::Migration[5.2]
  def change
  	change_column :marksheets, :physics, 'integer USING CAST(physics AS integer)'
  	change_column :marksheets, :chemistry, 'integer USING CAST(chemistry AS integer)'
  	change_column :marksheets, :mathematics, 'integer USING CAST(mathematics AS integer)'
  end
end
