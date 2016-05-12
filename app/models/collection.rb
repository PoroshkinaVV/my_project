class Collection < ActiveRecord::Base
  has_many :showpieces
  has_many :showroom_collections
  has_many :ticketprice_collections
end
