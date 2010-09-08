class House < ActiveRecord::Base

	validates_presence_of :title
	validates_length_of :title, :within => 10..37
	validates_length_of :teaser, :within => 100..600
	validates_presence_of :teaser, :description, :price, :payment, :bedrooms, :bathrooms, :maidsrooms, :floor_area, :lot_area
	validates_numericality_of :price, :bedrooms, :bathrooms, :maidsrooms, :floor_area, :lot_area
  validates_presence_of :image

	belongs_to :location
	belongs_to :term
	has_many :photos
	
	has_attached_file :image, :styles => { :thumb => "190x124>", :large => "400x300>" }
	
#:storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", :path => ":attachment/:id/:style.:extension",  
	
	
	def photo_attributes=(photo_attributes)
    photo_attributes.each do |attributes|
    photos.build(attributes)
  end
  end


end
