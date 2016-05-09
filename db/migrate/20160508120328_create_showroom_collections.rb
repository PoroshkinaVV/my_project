class CreateShowroomCollections < ActiveRecord::Migration
  def change
    create_table :showroom_collections do |t|
      t.references :showroom, index: true, foreign_key: true, null: 
false
      t.references :collection, index: true, foreign_key: true, null: 
false

      t.index [:showroom_id, :collection_id], unique: true

      t.timestamps null: false
    end
  end
end
