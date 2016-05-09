class CreateShowpieces < ActiveRecord::Migration
  def change
    create_table :showpieces do |t|
      t.string :name, null: false
      t.integer :creation_century, null: false, default: 0
      t.text :description
      t.float :insurance, null: false, default: 0
      t.float :height, null: false, default: 0
      t.float :width, null: false, default: 0
      t.float :length, null: false, default: 0
      t.boolean :temperature_control, null: false, default: false
      t.boolean :wet_control, null: false, default: false
      t.boolean :people_protection, null: false, default: false
      t.references :collection, index: true, foreign_key: true, null: 
false

      t.index [:name, :collection_id], unique: true

      t.timestamps null: false
    end
  end
end
