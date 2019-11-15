class Pday < ApplicationRecord
	belongs_to :program
	has_many :ptasks
	accepts_nested_attributes_for :ptasks, :reject_if => :all_blank, :allow_destroy => true
end
