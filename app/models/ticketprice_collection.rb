class TicketpriceCollection < ActiveRecord::Base
  belongs_to :ticketprice_id
  belongs_to :collection_id
end
