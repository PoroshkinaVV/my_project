class Collection < ActiveRecord::Base
  has_many :showpieces
  has_many :showroom_collections
  has_many :ticketprice_collections
  
  validates :name, presence: true, uniqueness: {scope: [:start_date, 
:end_date]}
  validates :start_date, presence: true
  validates :end_date, presence: true
  
end
