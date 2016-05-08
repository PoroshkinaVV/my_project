class CreateTicketpriceCollections < ActiveRecord::Migration
  def change
    create_table :ticketprice_collections do |t|
      t.references :ticketprice_id, index: true, foreign_key: true
      t.references :collection_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
