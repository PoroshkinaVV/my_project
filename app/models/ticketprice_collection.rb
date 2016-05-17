class TicketpriceCollection < ActiveRecord::Base
  belongs_to :ticketprice
  belongs_to :collection

  validates :ticketprice_id, presence: true, uniqueness: {scope: 
:collection_id}
  validates :collection_id, presence: true
end
