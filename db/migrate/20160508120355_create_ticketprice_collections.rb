class CreateTicketpriceCollections < ActiveRecord::Migration
  def change
    create_table :ticketprice_collections do |t|
      t.references :ticketprice, index: true, foreign_key: true, null: 
false
      t.references :collection, index: true, foreign_key: true, null: 
false

#      t.index [:ticketprice_id, :collection_id], unique: true

      t.timestamps null: false
    end
  end
end
