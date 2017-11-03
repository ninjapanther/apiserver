class Sd < ApplicationRecord
 def cpustatus 
 if (sd.cpu > 20) 
 "high email server root"
 else 
 "normal" 
 end
 end 


  
#scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
end
