class Program < ApplicationRecord
	has_many :pdays
	accepts_nested_attributes_for :pdays, :reject_if => :all_blank, :allow_destroy => true

end
