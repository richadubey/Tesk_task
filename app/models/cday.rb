class Cday < ApplicationRecord
	belongs_to :calendar
	has_many :ctasks
end
