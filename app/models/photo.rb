class Photo < ActiveRecord::Base
    belongs_to :house
    
    has_attached_file :data, 
                        :styles => {
                        :thumb => "100x75#",
                        :large => "400x300#"
                        }
                        
    validates_attachment_presence :data
    validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg', 'image/png' ] 
    
    def self.destroy_pics(house, photos)
        Photo.find(photos, :conditions => {:house_id => house}).each(&:destroy)
    end                   
end

  
