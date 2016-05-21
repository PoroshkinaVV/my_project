class CreateTicketprices < ActiveRecord::Migration
  def change
    create_table :ticketprices do |t|
      t.integer :visitor_type, null: false, default: 0
      t.float :price, null: false, default: 0

      t.timestamps null: false
    end
  end
end
