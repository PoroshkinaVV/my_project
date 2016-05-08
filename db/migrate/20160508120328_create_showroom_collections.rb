class CreateShowroomCollections < ActiveRecord::Migration
  def change
    create_table :showroom_collections do |t|
      t.references :showroom_id, index: true, foreign_key: true
      t.references :collection_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
