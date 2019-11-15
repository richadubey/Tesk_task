class Calendar < ApplicationRecord
	has_many :cdays
	accepts_nested_attributes_for :cdays, :reject_if => :all_blank, :allow_destroy => true
	
	
	
	
end
