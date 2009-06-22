class House < ActiveRecord::Base

	#validates_presence_of :title
	validates_length_of :title, :within => 10..60
	validates_length_of :teaser, :within => 100..600
	validates_presence_of :teaser, :description, :price, :payment, :bedrooms, :bathrooms, :maidsrooms, :floor_area, :lot_area
	validates_numericality_of :price, :bedrooms, :bathrooms, :maidsrooms, :floor_area, :lot_area

	belongs_to :location
	belongs_to :term
	has_many :photos
	
	def photo_attributes=(photo_attributes)
        photo_attributes.each do |attributes|
    photos.build(attributes)
         end
    end
end


