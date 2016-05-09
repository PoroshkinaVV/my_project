class CreateTicketprices < ActiveRecord::Migration
  def change
    create_table :ticketprices do |t|
      t.string :visitor_type, null: false, default: 'взрослый'
      t.float :price, null: false, default: 0

      t.timestamps null: false
    end
  end
end
