class CreateTicketprices < ActiveRecord::Migration
  def change
    create_table :ticketprices do |t|
      t.string :visitor_type
      t.float :price

      t.timestamps null: false
    end
  end
end
