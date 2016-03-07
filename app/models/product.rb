class Product < ActiveRecord::Base

  has_attached_file :image, 
    styles: { 
      main: "270x357#", 
      medium: "170x224#", 
    }
  validates_attachment :image, :presence => true,
    :content_type => { :content_type => "image/jpeg" },
    :size => { :in => 0..2000.kilobytes }

end
