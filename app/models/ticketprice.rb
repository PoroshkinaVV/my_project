class Ticketprice < ActiveRecord::Base
  has_many :ticketprice_collections

  validates :visitor_type, presence: true, inclusion: {in: [0, 1, 2, 
3, 4]}
  validates :price, numericality: {greater_than: 0}
  
  VISITOR_TYPES = {0=>"взрослый", 1=>"детский", 2=>"иностранный 
гражданин", 3=>"студент", 4=>"инвалид" }
end
