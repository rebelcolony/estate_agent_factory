class House < ActiveRecord::Base
	belongs_to :location
	belongs_to :term
	
end
