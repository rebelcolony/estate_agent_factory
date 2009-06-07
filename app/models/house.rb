class House < ActiveRecord::Base

	#validates_presence_of :title
	validates_length_of :title, :within => 10..60
	validates_presence_of :teaser
	validates_presence_of :description
	validates_presence_of :price
	validates_presence_of :payment
	validates_presence_of :bedrooms
	validates_presence_of :bathrooms
	validates_presence_of :maidsrooms
	validates_presence_of :floor_area
	validates_presence_of :lot_area
	

	belongs_to :location
	belongs_to :term
	
end
