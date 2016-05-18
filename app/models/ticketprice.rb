class Ticketprice < ActiveRecord::Base
  has_many :ticketprice_collections

  
  VISITOR_TYPES = {0=>"взрослый", 1=>"детский", 2=>"иностранный 
гражданин", 3=>"студент", 4=>"инвалид" }

  validates :price, numericality: {greater_than: 0}
  validates :visitor_type, presence: true, inclusion: {in: 
VISITOR_TYPES.keys}


end
