class Sl < ApplicationRecord
def self.filter(filter)
    if filter
      where(sd_id: filter)
    end
  end
  
  def cpustatus
    if (sd.cpu > 20)
      "high email server root"
    else
      "normal"
    end
end
  
#scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
end