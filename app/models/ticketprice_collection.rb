class TicketpriceCollection < ActiveRecord::Base
  belongs_to :ticketprice
  belongs_to :collection
end
